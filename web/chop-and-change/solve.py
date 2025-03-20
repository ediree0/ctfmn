 # var flag = "D{81UZH0RB_NM4P0HC_U_TT1_D3P}!!!T"
 #        var form = document.querySelector("form");
 #        form.addEventListener("submit", function(event) {
 #            event.preventDefault();
  
 #            var username = document.querySelector("#username").value;
 #            var password = document.querySelector("#password").value;

 #            var chunks = [];
 #            var chunkSize = 7

 #            for (var i = 0; i < password.length; i += chunkSize) {
 #                chunks.push(password.slice(i, i + chunkSize));
 #            }

 #            var reversed = chunks.map(function(chunk) {
 #                return chunk.split("").reverse().join("");
 #            }).join("");

 #            if (reversed == flag && username == 'admin') {
 #                window.location.href = "found.html";
 #            } else {
 #                alert("Incorrect password. Please try again.");
 #            }
 #        });

flag = "D{81UZH0RB_NM4P0HC_U_TT1_D3P}!!!T"

chunks = []
chunkSize = 7

for i in range(0,len(flag),chunkSize):
    chunks.append((flag[i:i+chunkSize])[::-1])

print("".join(chunks))


