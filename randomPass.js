const string = "@456$%huie^*7233#@fd56546sfdhqpotHWPQweoASGDkmpo!$%asdtremytu45s64f5er49684sd#$%*!$#@()oyt";

function main(s="", passLength=15) {
   const sArr = s.split("");
   let pass = ""
   for(let i = 1; i <= passLength; i++) {
      pass += sArr[ Math.floor( Math.random() * sArr.length - 1 ) ]
   }
   console.log(pass)
}

main(string, 25)

