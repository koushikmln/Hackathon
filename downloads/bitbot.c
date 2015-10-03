#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main() {

	const char* arr[] = { "Go ahead, tell them everything you know. It'll only take 10 seconds. ",
		"This is no battle of wits between you and me. I never pick on an unarmed man.",
		"I hope you step on a Lego!",
		"Let's play horse. I'll be the front end and you be yourself. ",
		"You seem to be a precociously boorish narcissist.",
		"Sometimes I don't know whether to laugh at you or pity you.",
		"You taking steroids?",
		"It's okay to feel what you are.",
		"It's okay, you're a joke all by yourself.",
		"Looks like I overestimated the number of your brain cells.",
		"Beta, tumse na ho paayega.",
		"I do have a life too, you know.",
		"With your IQ, I don't think you can understand.",
		"You're so dumb your IQ and shoe size are the same.",
		"Maybe it's in your genes.",
		"Are you sure you can type?" };
	printf("Enter number between 1 to 1000\n");
	int n;
	scanf("%d", &n);
	if (n == 550)
		printf("This is the key\n");
	else {
		srand(time(0));
		int randint = rand() % 15;
		printf("%s\n", arr[randint]);
	}
	return 0;
}
