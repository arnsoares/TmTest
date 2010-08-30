/*
 Copyright (c) 2008 AllFlashWebsite.com
 All rights reserved.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished
 to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 @ignore
 */
package com.afw.swfaddress {
    public class SWFAddressUtil {
		// Convert URI String to an Array
		public static function segmentURI(uri:String):Array {
			//var q = uri.indexOf("?");
			// TODO Possibly handle ? differently
			if (!uri || uri == "") return [];
			var arr:Array = uri.split("/");
			arr.shift();
			return (arr);
		}
		
		// Convert URI Array to URI String
		public static function joinURI(uriSegments:Array):String {
			return "/"+uriSegments.join("/");
		}
		
		// Build a title from a URI Array
		// Either customize this function, or have the Mediator build the title
		public static function formatTitleSeg(uriSegments:Array):String {
			return formatTitle(joinURI(uriSegments));
		}
		
		// Build a title from a URI String
		// Either customize this function, or have the Mediator build the title
		public static function formatTitle(title:String):String {
			return 'SWFAddress Website' + (title != '/' ? ' / ' + toTitleCase(replace(title.substr(1, title.length - 2), '/', ' / ')) : '');
		}
		
		private static function toTitleCase(str:String):String {
			return str.substr(0,1).toUpperCase() + str.substr(1);
		}
		
		private static function replace(str:String, find:String, replace:String):String{
			return str.split(find).join(replace);
		}
    }
}