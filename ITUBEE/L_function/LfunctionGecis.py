import itertools

"""XOR multiple bytes together."""
def xor_bytes(*args):

    result = 0
    for arg in args:
        result ^= arg
    return result

# Aktif ya da pasif olarak dönüştürür.
def convert(girdi):
    if girdi > 0:
        return 1
    if girdi == 0:
        return 0

"""Compute L(a‖b‖c‖d‖e)."""
def L(a, b, c, d, e):

    l1 = xor_bytes(e, a, b)
    l2 = xor_bytes(a, b, c)
    l3 = xor_bytes(b, c, d)
    l4 = xor_bytes(c, d, e)
    l5 = xor_bytes(d, e, a)
    return str(convert(l1))+","+str(convert(l2))+","+str(convert(l3))+","+str(convert(l4))+","+str(convert(l5))



if __name__ == "__main__":

    size = 4
    sonuc={}

    for a in range(0,pow(2,size)):
        for b in range(0, pow(2,size)):
            for c in range(0, pow(2,size)):
                for d in range(0, pow(2,size)):
                    for e in range(0, pow(2,size)):

                        cikti= L(a,b,c,d,e)

                        tmp=str(convert(a))+","+str(convert(b))+","+str(convert(c))+","+str(convert(d))+","+str(convert(e))+","+cikti
                        sonuc.setdefault(tmp,0)
                        sonuc[tmp]+=1



    for h in sonuc:
        print("[",h,"],")
