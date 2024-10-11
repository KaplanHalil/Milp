# L fonksiyonundaki olası tüm impossible geçişleri çıktı olarak veren kod.

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


# 10 bitlik listler içeren two dimentional list'e olası tüm binary değerleri verir
def generate_binary_combinations(n=10):
    # Generate all combinations of 0s and 1s of length n
    return [list(comb) for comb in itertools.product([0, 1], repeat=n)]

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


    tum_olasilik=generate_binary_combinations()

    # Convert dictionary keys to a 2D list
    gerceklesen_olasilik = [list(map(int, key.split(','))) for key in sonuc.keys()]


    # tüm olasılıktan gerçekleşenleri çıkarıp impossible olanlarıelde eder
    for olasilik0 in tum_olasilik:
        a=0
        for olasilik1 in gerceklesen_olasilik:

            if olasilik0 == olasilik1:
                a=a+1

        if a == 0 :
            print (olasilik0,",")
