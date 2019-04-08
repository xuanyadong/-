/** 创建XMLHttpRequest--xhr的对象 * */

function createXMLHttpRequest() {
	var xhr;
	if (window.ActiveXObject) { // IE下创建方案
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	} else if (window.XMLHttpRequest) {
		xhr = new XMLHttpRequest();
	}
	return xhr;
}

function serializeForm(form) {

	var postContent = "";
	var elements = form.elements;
	for (var i = 0; i < elements.length; ++i) {
		var element = elements[i];
		if (element.name == "") {
			continue;
		}
		if (element.type == "text" || element.type == "textarea"
				|| element.type == "hidden") {
			postContent += encodeURIComponent(element.name) + "="
					+ encodeURIComponent(element.value) + "&";
			continue;
		}

		if (element.type == "select-one" || element.type == "select-multiple") {
			var options = element.options, j, item;
			for (j = 0; j < options.length; ++j) {
				item = options[j];
				if (item.selected) {
					postContent += encodeURIComponent(element.name) + "="
							+ encodeURIComponent(item.value) + "&";
				}
			}
			continue;
		}

		if (element.type == "checkbox" || element.type == "radio") {
			if (element.checked) {
				postContent += encodeURIComponent(element.name) + "="
						+ encodeURIComponent(element.value) + "&";
			}
			continue;
		}

		if (element.type == "file") {
			if (element.value != "") {
				postContent += encodeURIComponent(element.name) + "="
						+ encodeURIComponent(element.value) + "&";
			}
			continue;
		}
		postContent += encodeURIComponent(element.name) + "="
				+ encodeURIComponent(element.value) + "&";

	}
	
	return postContent;
}

function simpleAjax(method, url, postContent, callback, isAsy) {
	var xmlhttp;
	if (isAsy == undefined) {
		isAsy = true;
	}
	if (window.ActiveXObject) {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		xmlhttp = new XMLHttpRequest();
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState != 4) {
			return;
		}
		if (xmlhttp.status != 200) {
			if (callback.fail) {
				callback.fail();
			}
			return;
		}
		if (!callback.success) {
			return;
		}
		if (callback.type == "plain") {
			callback.success(xmlhttp.responseText);
		} else if (callback.type == "xml") {
			callback.success(xmlhttp.responseXML);
		} else {
			callback.success(xmlhttp.responseText);
		}
	};
	try {
		if (method.toLowerCase() == "get") {
			xmlhttp.open("get", url, isAsy);
			xmlhttp.send(null);
		} else {
			xmlhttp.open("post", url, true);
			xmlhttp.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded");
			xmlhttp.send(postContent);
		}
	} catch (e) {
		if (callback.fail) {
			callback.fail();
		}
	}
}
