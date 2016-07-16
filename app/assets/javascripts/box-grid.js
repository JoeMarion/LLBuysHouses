Array.from(document.querySelectorAll('[_widths]')).map((elem) => {
	let widths = elem.getAttribute('_widths').split(/\D/g).filter(Boolean);
	elem.className += ` xs-${widths[0]}`;
	elem.className += ` sm-${widths[1]}`;
	elem.className += ` md-${widths[2]}`;
	elem.className += ` lg-${widths[3]}`;
	elem.className += ` xl-${widths[4]}`;
});
