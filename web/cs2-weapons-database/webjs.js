const b = n;
(function(O, z) {
	const C = n;
	const s = O();
	while (!![]) {
		try {
			const G = -parseInt(C(0x144)) / 0x1 + parseInt(C(0x167)) / 0x2 * (parseInt(C(0x148)) / 0x3) + parseInt(C(0x15d)) / 0x4 + parseInt(C(0x143)) / 0x5 * (-parseInt(C(0x139)) / 0x6) + -parseInt(C(0x150)) / 0x7 * (-parseInt(C(0x16a)) / 0x8) + parseInt(C(0x15f)) / 0x9 * (-parseInt(C(0x149)) / 0xa) + parseInt(C(0x142)) / 0xb;
			if (G === z) {
				break;
			} else {
				s['push'](s['shift']());
			}
		} catch (j) {
			s['push'](s['shift']());
		}
	}
}(D, 0x3ca1d));

function D() {
	const Z = ['return\x20(function()\x20', '.webp', 'textContent', 'enc', 'consoleOutput', 'Utf8', 'Encrypted\x20request:\x20', 'constructor', 'getElementById', 'Select\x20a\x20weapon\x20to\x20view\x20details', '940218HILTPj', 'classList', 'appendChild', 'catch', '\x20-\x20standard\x20CS2\x20weapon.', 'search', '/gun-info', 'then', 'src', '4822356ZZfWpu', '5AlBuok', '399456swyVxm', '(((.+)+)+)+$', 'CBC', 'info', '661713NoSOFn', '820IVoJbQ', ']kwijc)SH7k8Er=u', 'Response:\x20', 'weaponImage', 'exception', 'https://www.csgodatabase.com/images/weapons/webp/', 'div', '14fILZBa', 'trace', '9K0,J3qVgD/Y7nx$', 'pad', 'Pkcs7', 'createElement', 'bind', 'mode', 'stringify', 'apply', 'weaponDescription', 'scrollHeight', '__proto__', '703704xOsDUB', 'console', '54207udsXgW', 'weaponName', 'warn', 'application/json', 'toUpperCase', 'AES', 'message', 'toString', '4QgoBkZ', 'length', 'parse', '971720yQCjXk'];
	D = function() {
		return Z;
	};
	return D();
}
const key = CryptoJS[b(0x132)][b(0x134)]['parse'](b(0x14a));
const iv = CryptoJS[b(0x132)][b(0x134)][b(0x169)](b(0x152));

function encryptGunInfo(O) {
	const e = b;
	const z = JSON[e(0x158)]({
		'gun': O
	});
	const s = CryptoJS[e(0x164)]['encrypt'](z, key, {
		'iv': iv,
		'mode': CryptoJS[e(0x157)][e(0x146)],
		'padding': CryptoJS[e(0x153)][e(0x154)]
	});
	return s[e(0x166)]();
}

function requestGunInfo(O) {
	const o = b;
	const z = encryptGunInfo(O);
	logToConsole('Requesting\x20info\x20for:\x20' + O);
	logToConsole(o(0x135) + z);
	fetch(o(0x13f), {
		'method': 'POST',
		'headers': {
			'Content-Type': o(0x162)
		},
		'body': JSON[o(0x158)]({
			'data': z
		})
	})[o(0x140)](s => s['json']())[o(0x140)](s => {
		const p = o;
		logToConsole(p(0x14b) + JSON['stringify'](s));
		displayGunInfo(O, s[p(0x147)]);
	})[o(0x13c)](s => {
		const E = o;
		logToConsole('Error:\x20' + s[E(0x165)]);
		const G = O[E(0x163)]() + E(0x13d);
		displayGunInfo(O, G);
	});
}

function getGunInfo(O) {
	requestGunInfo(O);
}

function displayGunInfo(O, z) {
	const q = b;
	const s = document[q(0x137)]('weaponInfo');
	const G = document[q(0x137)](q(0x160));
	const j = document[q(0x137)](q(0x14c));
	const V = document[q(0x137)](q(0x15a));
	s[q(0x13a)]['add']('active');
	G[q(0x131)] = O[q(0x163)]();
	j[q(0x141)] = q(0x14e) + O + q(0x130);
	V[q(0x131)] = z;
}

function n(O, z) {
	const s = D();
	n = function(G, j) {
		G = G - 0x12f;
		let V = s[G];
		return V;
	};
	return n(O, z);
}

function logToConsole(j) {
	const u = b;
	const V = (function() {
		let c = !![];
		return function(l, i) {
			const U = c ? function() {
				const d = n;
				if (i) {
					const W = i[d(0x159)](l, arguments);
					i = null;
					return W;
				}
			} : function() {};
			c = ![];
			return U;
		};
	}());
	const t = V(this, function() {
		const B = n;
		return t[B(0x166)]()[B(0x13e)](B(0x145))[B(0x166)]()[B(0x136)](t)[B(0x13e)](B(0x145));
	});
	t();
	const a = (function() {
		let c = !![];
		return function(l, i) {
			const U = c ? function() {
				if (i) {
					const W = i['apply'](l, arguments);
					i = null;
					return W;
				}
			} : function() {};
			c = ![];
			return U;
		};
	}());
	const X = a(this, function() {
		const K = n;
		const c = function() {
			const Q = n;
			let W;
			try {
				W = Function(Q(0x12f) + '{}.constructor(\x22return\x20this\x22)(\x20)' + ');')();
			} catch (g) {
				W = window;
			}
			return W;
		};
		const l = c();
		const i = l[K(0x15e)] = l[K(0x15e)] || {};
		const U = ['log', K(0x161), K(0x147), 'error', K(0x14d), 'table', K(0x151)];
		for (let W = 0x0; W < U[K(0x168)]; W++) {
			const g = a[K(0x136)]['prototype']['bind'](a);
			const A = U[W];
			const M = i[A] || g;
			g[K(0x15c)] = a[K(0x156)](a);
			g[K(0x166)] = M[K(0x166)][K(0x156)](M);
			i[A] = g;
		}
	});
	X();
	const y = document[u(0x137)](u(0x133));
	const N = document[u(0x155)](u(0x14f));
	N[u(0x131)] = '>\x20' + j;
	y[u(0x13b)](N);
	y['scrollTop'] = y[u(0x15b)];
}
logToConsole('CS2\x20Weapons\x20Database\x20initialized');
logToConsole(b(0x138));
logToConsole('Fetch\x20`deagle`\x20to\x20get\x20FLAG!');