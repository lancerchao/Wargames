import sys
from scipy.special import comb
import functools

def isPrime(memes):
    return memes > 1 and all(memes%i for i in range(2,memes))

def epicfail(memes):
    wow = 0
    dank = True
    if memes > 1:
        dank = isPrime(memes)
        if dank:
            wow = bill(memes - 1) + 1
        else:
            wow = such(memes - 1)
    return wow

def such(memes):

    #wow = dootdoot(memes, 5)
    wow = comb(memes, 5, exact=True)
    wew = 0
    if (wow % 7) is 0:
        wew = bill(memes - 1)
        wow = wow + 1
    else:
        wew =  epicfail(memes - 1)
    wow = wew + wow
    return wow

def fib(n):
    a, b = 0, 1
    for i in range(0,n):
        a, b = b%987654321, (a+b)%987654321
    return a

def bill(memes):
    wow = fib(memes)
    if (wow % 3) is 0:
        wew = such(memes - 1)
        wow = wow + 1
    else:
        wew = epicfail(memes - 1)
    wow = wew + wow
    return wow

def main():
    memes = 13
    wew = epicfail(memes)
    print (wew)

if __name__ == "__main__":
    main()
