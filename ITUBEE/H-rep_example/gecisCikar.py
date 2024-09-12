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
def L(a, b, c):

    l1 = xor_bytes(a, b)
    l2 = xor_bytes(a, c)
    l3 = xor_bytes(b, c)
    return str(convert(l1))+","+str(convert(l2))+","+str(convert(l3))



if __name__ == "__main__":

    size = 2
    sonuc={}

    for a in range(0,pow(2,size)):
        for b in range(0, pow(2,size)):
            for c in range(0, pow(2,size)):

                        cikti= L(a,b,c)

                        tmp=str(convert(a))+","+str(convert(b))+","+str(convert(c))+","+cikti
                        sonuc.setdefault(tmp,0)
                        sonuc[tmp]+=1

    for h in sonuc:
        print("[",h,"],")