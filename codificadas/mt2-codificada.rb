## Linguagem a^n b^n c^n
## estados não finais 
## a^{2(i+1)}
q0 = "aa"
q1 = "aaaa"
q2 = "aaaaaa"
q3 = "aaaaaaaa"
q4 = "aaaaaaaaaa"
q5 = "aaaaaaaaaaaa"

## estados finais
## a^{2i + 1}

q6 = "a"
## símbolo branco
@b = "ba"
## elementos do alfabeto
## sigma = {s0, s1, ..., sn }
## b^{m*3}a
@x  = "bbba"
@y  = "bbbbbba"
@z  = "bbbbbbbbba"
#USADOS PARA SUBSTITUIR a b c
@A  = "bbbbbbbbbbbba"
@B  = "bbbbbbbbbbbbbbba"
@C  = "bbbbbbbbbbbbbbbbbba"
## movimentacao do cursor
esq = "c"
dir = "cc"

# transição d(qi,sm) = (qj,sn,E)
## Máquina de Turing que aceita a Linguagem a^n b^n c^n

#Substituir o primeiro a/x por A andar ate achar b/y e substituir por B 
#andar ate achar c/z e substituir por C
#repetir ate que nao haja mais a/x b/y c/z
@d1 = "#{q0}#{@x}#{q1}#{@A}#{dir}"
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"
@d3 = "#{q1}#{@B}#{q1}#{@B}#{dir}"
@d4 = "#{q1}#{@y}#{q2}#{@B}#{dir}"
@d5 = "#{q2}#{@y}#{q2}#{@y}#{dir}"
@d6 = "#{q2}#{@C}#{q2}#{@C}#{dir}"
@d7 = "#{q2}#{@z}#{q3}#{@C}#{esq}"
@d8 = "#{q3}#{@C}#{q3}#{@C}#{esq}"
@d9 = "#{q3}#{@y}#{q3}#{@y}#{esq}"
@d10 = "#{q3}#{@B}#{q3}#{@B}#{esq}"
@d11 = "#{q3}#{@A}#{q3}#{@A}#{esq}"
@d12 = "#{q3}#{@A}#{q0}#{@A}#{dir}"
@d13 = "#{q0}#{@B}#{q4}#{@B}#{dir}"
@d14 = "#{q4}#{@B}#{q4}#{@B}#{dir}"
@d15 = "#{q4}#{@C}#{q5}#{@C}#{dir}"
@d16 = "#{q5}#{@C}#{q5}#{@C}#{dir}"
@d17 = "#{q5}#{@b}#{q6}#{@b}#{dir}"

def linker # software
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}#{@d11}#{@d12}#{@d13}#{@d14}#{@d15}#{@d16}#{@d17}"
end

def codificacao_cadeia
  "#{@x}#{@x}#{@y}#{@y}#{@z}#{@z}#{@b}"
end