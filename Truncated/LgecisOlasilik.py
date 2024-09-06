import itertools
import math

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


def olasilik_hesapla(key):

    # Select the 0th, 2nd, 4th, 6th, and 8th elements
    selected_values = [int(key[i]) for i in [0, 2, 4, 6, 8]]

    # Calculate the sum of selected values
    sum_selected = sum(selected_values)

    # Compute the power (pow((2^4)-1, sum_selected))
    result = pow(pow(2, 4) - 1, sum_selected)

    return result

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


    
    olasiliklar=[]
    uniqOlasiliklar=[]

    for h in sonuc:
        
        olasilik= math.log2(int(sonuc[h]) / int(olasilik_hesapla(h)))
        print("[",h,",",round(olasilik,2),"],")

        sonuc[h]=round(olasilik,2)
        
        olasiliklar.append(olasilik)
        



    for x in olasiliklar:
        if x not in uniqOlasiliklar:
            uniqOlasiliklar.append(x)

        uniqOlasiliklar.append(0)
    #print(uniqOlasiliklar)

    values = [
    0.0, -3.90, -0.09, -7.81,
    -4.00, -0.30, -11.72, -4.21,
    -7.91, -0.50, -0.45, -8.11,
    -4.41, -11.82,99,99]

    keys = [','.join(map(str, comb)) for comb in itertools.product([0, 1], repeat=4)]

    # Create the dictionary by mapping each key to the corresponding value
    sonuc1 = {key: keys[i] for i, key in enumerate(values)}

    # Hangi olasılığın nereye gittiği
    #print(sonuc1)

    
   # for h in sonuc:
        
    #    print("[",h,",",sonuc1[sonuc[h]],"],")
        