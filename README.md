# SEG-3503-LAB5
## GRADES

Après avoir supprimé Grades.Calculator en ajoutant le bloc suivant à lib/grades.ex

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/1a6e925d-1a81-43ab-b371-513e64352828)

Nous lançons l'application Grades et cliquons plusieurs fois sur le bouton CALCULATE.

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/3d0378c4-b326-48ad-ad5f-de8c007cbb04)

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/bc070d84-e62c-4a42-aa54-2f165e13a6a1)

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/65406705-22de-4cb4-ae37-06df26a6f3b8)

On peut remarquer que, à chaque fois, une combinaison différente de notes apparaît, comme prévu.

Plus tard, on a implémenté les méthodes grades.ex comme on peut le voir ci-dessous :

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/e7b16acc-1490-4b09-bb4a-a00b391708fd)

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/7e18c1dd-ad28-4991-b877-24b083928e76)

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/67746226-91d2-470f-93f7-3e33a2101e18)

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/16ea8c85-19d8-42ad-aa5f-bf484d29c610)


Malheureusement,on n'a pas pu les tester car une erreur arithmétique (ArithmeticError) était déclenchée par l'application chaque fois que l'on cliquait sur CALCULATE.


![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/291f10ca-57c1-4b65-bbb8-25667447779c)

Il est clair que les arguments passés aux méthodes implémentées ne sont pas des integers, mais des strings, ce qui a provoqué la levée d'exceptions arithmétiques. On n'a pas pu corriger l'erreur car on n'est pas très familier avec Elixir ou l'application elle-même, mais on pense que cette solution aurait dû fonctionner si les arguments  étaient des integers


## TWITTER

![aa](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/fdafdb8c-d67f-4da8-bd4a-99177b5e477a)

Après limplementer des tests unitaires, la sortie bin/test était la suivante :

![cc](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/db85854f-4af8-4eaf-a6e5-ca897caab8c2)

On a refactoré isMentionned method:

![image](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/81290147-e9ed-4ec4-b094-c715040b9346)

Enfin, la sortie bin/test était la suivante :

![ff](https://github.com/Chaouchyass/SEG-3503-LAB5/assets/114030630/eb210fcf-3bae-4ceb-a706-fc2e88694b79)











