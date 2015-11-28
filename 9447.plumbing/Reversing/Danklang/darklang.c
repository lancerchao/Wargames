#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

bool isPrime(int memes, int calcium)
{
	if (calcium >= memes)
		return true;
	
	if ((memes % calcium) == 0)
		return false;
	else
		return isPrime(memes, calcium+1);
}

int epicfail(int memes)
{
	int wow = 0;
	bool dank = true;
	if (memes > 1)
	{
		dank = isPrime(memes, 2);
		if (dank)
			wow = bill(memes-1) + 1;
		else
			wow = such(memes-1);
	}
	return wow;
}

int dootdoot(int memes, int seals)
{
	int doritos = 0;
	if (seals > memes)
		return doritos;
	else
	{
		if (seals == 0)
			doritos = 1;
		else
		{
			if (seals == memes)
				doritos = 1;
			else
			{
				doritos = dootdoot(memes - 1, seals - 1);
				doritos = dootdoot(memes - 1, seals) + doritos;
			}
		}

	}
	return doritos;
}

int such(int memes)
{
	int wow = dootdoot(memes, 5);
	printf("doodoot returned %d for %d\n", wow, memes);
	int wew = 0;
	if ((wow % 7) == 0)
	{
		wew = bill(memes - 1);
		wow += 1;
	}
	else
	{
		wew = epicfail(memes - 1);
	}
	wow += wew;
	return wow;
}

// int brotherman(memes)
// {
// 	int hues = 0;
// 	if (memes != 0)
// 	{
// 		if (memes < 3)
// 			hues = 1;
// 		else
// 		{
// 			hues = brotherman(memes - 1);
// 			hues += brotherman(memes - 2) ;
// 		}

// 	}
// 	hues = hues % 987654321;
// 	return hues;
// }

// int fibonacci(memes)
// {
// 	int hues = 0;
// 	if (memes != 0)
// 	{
// 		if (memes < 3)
// 		{
// 			return 1;	
// 		}
// 		else
// 		{ 
// 			return (fibonacci(memes - 1) + fibonacci(memes - 2)) % 987654321;	
// 		}
// 	}
// 	else
// 	{
// 		return 0;	
// 	}

// }

int fibonacci(int memes, int val, int prev)
{
	if (memes == 0)
		return prev;
	if (memes == 1)
		return val;
	return (fibonacci(memes - 1, val+prev, val)%987654321);

}
int bill(int memes)
{
	int wew = fibonacci(memes, 1, 0);
	int wow = wew;
	if ((wow%3)==0)
	{
		wew = such(memes - 1);
		wow += 1;
	}
	else
		wew = epicfail(memes - 1);
	wow += wew;
	return wow;
}
int main()
{
	int memes = 31;
	printf("%d\n", epicfail(memes));
}