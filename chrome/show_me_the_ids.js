// Copyright (c) 2014 Tentamen d.o.o. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//icon author: http://www.iconarchive.com/artist/rud3boy.html
//icon license: http://creativecommons.org/licenses/by-nc-nd/4.0/
/**
 * Global variable containing all ids created by this extension
 *
 * @type {associative array}
 */
var created_ids = {}
/**
 * Global variable containing console log filter. Use this string to filter out
 * extension logs
 * @type {string}
 */
var log_filter = 'show_me_the_ids: '
/**
 * Creates unique string based on Element path up to root Element in DOM tree.
 * If there is already element on this path, then it gets unique order number at the end.
 * @type {Node}
 * @return {string} unique path
 * @public
 */
function path_to_root(node) {
    var path = [];
    while (node) {
        if (node instanceof Element){
            id = node.getAttribute('id');
        }
        if(id == null){
            preserve_index = '0';
        }else{
            preserve_index_array = id.split('_')
            preserve_index = preserve_index_array[preserve_index_array.length-1]
        }
        if(parseInt(preserve_index) == 0){
            path.unshift(node.nodeName.replace('#',''));
        }else{
            path.unshift(node.nodeName.replace('#','')+'_'+preserve_index)
        }
        node = node.parentNode;
    }
    id_name = path.join('_').toLowerCase()
    if (id_name in created_ids){
        created_ids[id_name] = created_ids[id_name] + 1
    }
    else{
        created_ids[id_name] = 0
    }
    return escape(id_name) + '_' + created_ids[id_name].toString()
}
/**
 * Recursively walks the DOM tree.
 * Author: Douglas Crockford http://www.youtube.com/watch?v=Y2Y0U-2qJMs&feature=youtu.be&t=27m15s
 * @type {Node}
 * @public
 */
function walkTheDOMandSetId(node, func) {
    func(node);
    node = node.firstChild;
    while (node) {
        walkTheDOMandSetId(node, func);
        node = node.nextSibling;
    }
}
/**
 * Adds id attribute to Node if id does not exist. Id value is unique path to root of Element.
 * @type {Node}
 * @public
 */
function add_id(node, func) {
    try {
         if (node instanceof Element && !node.hasAttribute('id')) {
             node.setAttribute('id',path_to_root(node));
        }
     }
     catch(err){
        console.log(log_filter+err.stack);
     }
}
/**
 * this method is called when DOM document is fully loaded.
 * @type {Element}
 * @public
 */
walkTheDOMandSetId(document.documentElement, function (node) {
     add_id(node);
});
/**
 * Event listener that listens to DOM Node inserts and deletition.
 * author: http://stackoverflow.com/users/104380/vsync
 * @public
 */
var observeDOM = (function(){
    var MutationObserver = window.MutationObserver || window.WebKitMutationObserver,
        eventListenerSupported = window.addEventListener;

    return function(obj, callback){
        if( MutationObserver ){
            // define a new observer
            var obs = new MutationObserver(function(mutations, observer){
                if( mutations[0].addedNodes.length || mutations[0].removedNodes.length )
                    callback();
            });
            // have the observer observe foo for changes in children
            obs.observe( obj, { childList:true, subtree:true });
        }
        else if( eventListenerSupported ){
            obj.addEventListener('DOMNodeInserted', callback, false);
            obj.addEventListener('DOMNodeRemoved', callback, false);
        }
    }
})();
/**
 * this method is called when DOM document is changed.
 * @type {Element}
 * @public
 */
observeDOM(document.documentElement,function() {
    created_ids = {};
    walkTheDOMandSetId(document.documentElement, function (node) {
        add_id(node);
    });
});
/**
 * Mouse click plus shift pressed down listener for any shift click on the current document.
 * Writes to console log Element id
 * @type {Event}
 * @public
 */
//
document.addEventListener('click', function (e) {
  var srcElement = e.srcElement;
  if (e.shiftKey){
    console.log(log_filter+srcElement.getAttributeNode('id').value);
    e.preventDefault();
  }
}, false);
