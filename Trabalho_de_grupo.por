programa
{	
    inclua biblioteca Util --> u
    // numero de vidas, comida do player
    inteiro vidas=3
    // skip tutorial,centauro morto, ratazana morta, mutante morta
	logico food=falso,fed=falso,cheat=falso,defeatCentauro=falso,defeatRatazana=falso,defeatGoblin=falso,defeatMutante=falso,defeatboss=falso,defeatminotauro=falso
	
	// Chaves
	logico CB1=falso,CB2=falso,C3=falso,C10=falso,C11=falso
	// Inventario 0-Amuleto do Mago,1-Bensao divina,3-armadura,4-Espada de bronze,2-Excalibur
	cadeia inv[5]={"","","","",""},
	
	StringQuestao="\nO que deseja fazer?\n",
	StringMenuUtil = "[9] Menu de personagem\n",
	divider = "------------------------------------------\n",
	StringLooted="Já não há mais nada aqui\n"
	
	funcao inicio()
	{
	    limpa()
		cabe()
		jogo()
		se(vidas>-10){
			
			// GAMER OVER TEXT
			escreva("GAME OVER\n")
		} senao {
			escreva("VITORIA\n")
		}
	}

	// Cabeçalho
	funcao cabe(){
	    escreva(divider)
		escreva("----------- MASMORRA DO EXILIO -----------\n")
		escreva(divider)

		// INTRO
		escreva("Você acorda no chão frio, de uma cela, apenas com uma cama, um armário e baú, não se recorda como veio aqui parar\n ")
		escreva("O seu objetivo é escapar desta masmorra, com vida\n")
	}
	
	// GAME LOOP
	funcao jogo(){
	    inteiro opcao
		enquanto(vidas > 0){
			se(cheat == falso) { salainicio() }
			

			escreva(divider)
			para(inteiro i=1;i<=15;i++){
                escreva("["+i+"] Entrar na sala "+i+"\n")
    		}
    		escreva(divider)
    		escreva(StringQuestao)
			leia(opcao)
			escolha(opcao){
			    caso 1:
			        limpa()
			        sala1()
			    pare
			    caso 2:
			        limpa()
			        sala2()
			    pare
			    caso 3:
			        limpa()
			        sala3()
			    pare
			    caso 4:
			        limpa()
			        sala4()
			    pare
			    caso 5:
			        limpa()
			        sala5()
			    pare
			    caso 6:
			        limpa()
			        sala6()
			    pare
			    caso 7:
			        limpa()
			        sala7()
			    pare
			    caso 8:
			        limpa()
			        sala8()
			    pare
			    caso 9:
			        limpa()
			        sala9()
			    pare
			    caso 10:
			        limpa()
			        sala10()
			    pare
			    caso 11:
			        limpa()
			        sala11()
			    pare
			    caso 12:
			        limpa()
			        sala12()
			    pare
			    caso 13:
			        limpa()
			        sala13()
			    pare
			    caso 14:
			        limpa()
			        sala14()
			    pare
			    caso 15:
			        limpa()
			        sala15()
			    pare

			}
		}
	}
	
	// SALA Tutorial
	funcao salainicio(){
		logico unlockbau=falso, saida=falso
		inteiro opcaol
		
		enquanto(saida != verdadeiro){
		    textosalas(0)
		    escreva(StringQuestao)
		    leia(opcaol)
		escolha(opcaol){
			caso 1:
			limpa()
			    escreva("Não encontrou nada de útil\n")
			pare
			caso 2:
			limpa()
			se(CB1 == verdadeiro){
			    se(unlockbau == falso) {
			        escreva("Usando a chave que encontrou no armário, você abre o bau\n")
    				escreva("\n")
    				escreva("Dentro do baú, você encontra uma pequena faca e um arame\n")
    				unlockbau=verdadeiro
			    } senao {
			        escreva("Já abriu este bau\n")
			    }
			}
			senao{
			    escreva("O baú esta trancado \n")
			}
			pare
			caso 3:
			limpa()
				escreva("Investigando o armário você encontra uma chave\n")
				CB1=verdadeiro
			pare
			caso 4:
			limpa()
				se(unlockbau == falso){
					escreva("A porta esta trancada\n")
				}
				senao{
				    se (saida == falso){
				        escreva("Você utiliza o arame para arrombar a fechadura da porta\n")
				        pera()
					    saida=verdadeiro
					    sala1()
				    }
				}
			pare
			caso 9:
			    menuutil()
			pare	
		}
	}}
	
	// SALA 1
	funcao sala1(){
	   escreva("------------\n")
        escreva("---SALA 1---\n")
        escreva("------------\n")
		escreva("Você consegue sair da cela, e encontra-se numa sala algo sombria, apenas com uma mesa e duas portas\n")
		logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(1)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
			caso 1:
			    limpa()
			    se (food==falso){
			        escreva("Encontrou um pedaço de pão, mas de momento não tem fome, logo guarda para mais tarde\n")
    		 	    food=verdadeiro
			    } senao { escreva("Não há nada aqui ...\n") }
    		pare
    		caso 2:
    		    limpa()
    		    sala2()
    		    saida = verdadeiro
		 	pare
		caso 3:
		    limpa()
    		    sala5()
    		    saida = verdadeiro
    		    pare
		 	caso 9:
		 	menuutil()
		 	pare
		 	
		 }
    }}
	
	funcao sala2(){
	   escreva("------------\n")
        escreva("---SALA 2---\n")
        escreva("------------\n")
		escreva("Você subiu umas escadas e nesta pequena divisão apenas se encontra um Bau\n")
		logico unlockbau=falso,saida=falso
    	inteiro opcaol
		enquanto(saida != verdadeiro){
    	    textosalas(2)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
    		caso 1:
    		    limpa()
        		se(CB2 == verdadeiro){
        		    se(unlockbau == falso) {
			        escreva("Você abre o baú e dentro encontra-se a chave para a saida\n")
        			C11 = verdadeiro
    				unlockbau=verdadeiro
    			    } senao {
    			        escreva("Já abriu este baú\n")
    			    }
        		} senao {
        			escreva("Você não tem a chave para abrir este baú\n")
        		}
    		pare
    		caso 2:
    			limpa()
        		sala1()
        		saida = verdadeiro
        	pare
        	caso 9:
    			menuutil()
    		pare
		 }
    }}
	
	funcao sala3(){
	    /// chave
	   escreva("------------\n")
        escreva("---SALA 3---\n")
        escreva("------------\n")
        logico saida=falso
	   
	   
	   se (C3==verdadeiro){ 
		escreva("Apos descer as escadas e abrir a porta entra num hall grande e algo escuro, deparando-se também na presença de um possível inimigo, com parte superior humana mas parte posterior de cavalo, uma criatura conhecida como um Centauro\n")
		enquanto(saida != verdadeiro){
	    textosalas(3)
    	    escreva(StringQuestao)
    	    inteiro opcao
    	    leia(opcao)
    	    escolha(opcao){
    	    		caso 1:
    	    		 se(defeatCentauro == falso){
    	    		 	se (inv[3]!="" e inv[4]!=""){
    	    		 		inteiro chance = u.sorteia(0, 100)
    	    		 		se (chance>50){
    	    		 			escreva("Você heroicamente derrota o Centauro e recebe a espada lendária Excalibur\n")
    	    		 			defeatCentauro=verdadeiro
    	    		 			inventario("Excalibur",2)
    	    		 			escreva("Junto aos pertences do Centauro você encontra também uma poção que restaura e aumenta a sua vida\n")
    	    		 			vidas+=2
    	    		 		} senao {
    	    		 			escreva("Você derrota o Centauro, mas perde uma vida, recebe também a espada lendária Excalibur\n")
    	    		 			defeatCentauro=verdadeiro
    	    		 			inventario("Excalibur",2)
    	    		 			vidas-=1
    	    		 			escreva("Junto aos pertences do Centauro você encontra também uma poção que restaura e aumenta a sua vida\n")
    	    		 			vidas+=2
    	    		 		}
    	    		 	}
    	    		 	senao se (inv[3]!=""){
    	    		 		inteiro chance = u.sorteia(1, 10)
    	    		 		se (chance<8){
    	    		 		 escreva("Você derrota o Centauro, mas perde uma vida, recebe também a espada lendária Excalibur\n")
    	    		 			defeatCentauro=verdadeiro
    	    		 			inventario("Excalibur",2)
    	    		 			vidas-=1	
    	    		 			escreva("Junto aos pertences do Centauro você encontra também uma poção que restaura e aumenta a sua vida\n")
    	    		 			vidas+=2
    	    		 		} senao {
    	    		 		 escreva("Você heroicamente derrota o Centauro e recebe a espada lendária Excalibur\n")
    	    		 		 defeatCentauro=verdadeiro
    	    		 		 inventario("Excalibur",2)
    	    		 		 escreva("Junto aos pertences do Centauro você encontra também uma poção que restaura e aumenta a sua vida\n")
    	    		 		 vidas+=2	
    	    		 		}
    	    		 	} senao{
    	    		 		    	escreva("Você derrota o Centauro, mas perde duas vidas, recebe também a espada lendária Excalibur\n")
    	    		 			defeatCentauro=verdadeiro
    	    		 			inventario("Excalibur",2)
    	    		 			vidas-=2	
    	    		 			escreva("Junto aos pertences do Centauro você encontra também uma poção que restaura e aumenta a sua vida\n")
    	    		 			vidas+=2
    	    		 	}
    	    		 }senao {
    	    		 	escreva("Você já matou o Centauro\n")
    	    		 }
    	    		pare
    	    		caso 2:
    	    		saida=verdadeiro
    	    		sala7()
    	    		pare
    	    		caso 9:
    	    		menuutil()
    	    		pare
    	    }








			
		}
	   }senao {
	   	escreva("Esta sala esta trancada\n")
    	    	saida=verdadeiro
	   }









	}

	
	funcao sala4(){
	   escreva("------------\n")
        escreva("---SALA 4---\n")
        escreva("------------\n")
		logico saida=falso
    	inteiro opcaol
    	se(defeatRatazana == falso){
    	    escreva("Mal entra nesta sala uma ratazana faminta ataca-o\n")
    	    pera()
    	    inteiro valor = u.sorteia(1, 10)
            se(valor>5){
                escreva("Você consegue matar a ratazana\n")
                defeatRatazana=verdadeiro
            }senao{
                escreva("Você consegue matar a ratazana, mas perde uma vida\n")
                vidas-=1
                defeatRatazana=verdadeiro
            }
    	}
    	enquanto(saida != verdadeiro){
    	    textosalas(4)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
		    caso 1:
		        limpa()
		        sala8()
		        saida=verdadeiro
			pare
			caso 2:
			    limpa()
        		    sala5()
        		saida = verdadeiro
			pare
			caso 9:
    			menuutil()
    		pare
		 }
    }}

	
	funcao sala5(){
	   escreva("------------\n")
        escreva("---SALA 5---\n")
        escreva("------------\n")
		escreva("Você encontra-se num corredor com 3 portas e repara que de cima de uma mesa se encontra um pote\n")
		logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(5)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
			caso 1:
			se (C3==falso){
			    limpa()
        		escreva("Você vira o pote e uma chave cai do mesmo, Você apanha a chave do chão, de momento não tem uso para esta chave\n")
        		C3 = verdadeiro
			} senao{
				escreva("Você já investigou o pote\n")
			}
    		pare
    		caso 2:
    		    limpa()
			    sala4()
			    saida=verdadeiro
		 	pare
		 	caso 3:
    		    limpa()

			    sala6()
			    saida=verdadeiro
		 	pare
		 	caso 4:
    		    limpa()

			    sala1()
			    saida=verdadeiro
		 	pare
		 	caso 9:
		 	    menuutil()
		 	pare
		 }
    }}
	
	funcao sala6(){
	   escreva("------------\n")
        escreva("---SALA 6---\n")
        escreva("------------\n")
		
		se (defeatGoblin==falso){
			pera()
			escreva("Assim que entra nesta sala você e atacado por uma criatura humanoide com pouco mais de 80cm e pele de tonalidade verde\n")
			escreva("\n")
		se(inv[3]!=""){
			escreva("Você facilmente mata a criatura sem um único arranhão\n")
			defeatGoblin=verdadeiro
		} senao {
		    inteiro valor = u.sorteia(1, 10 )
    		se(valor>5){
    		    escreva("Você consegue matar o Goblin\n")
    		    defeatGoblin=verdadeiro
    		}senao{
        		escreva("Você consegue matar o Goblin, mas perde uma vida\n")
        		defeatGoblin=verdadeiro
        		vidas-=1
    		}}
		}
		
		logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
		    textosalas(6)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
        	caso 1:
        			limpa()
    				sala7()
    				saida=verdadeiro

    		pare
    		caso 2:
    			limpa()
    		    se(C10==verdadeiro){

    				sala10()
    				saida=verdadeiro
    			}senao{
    				escreva("Você não consegue abrir esta porta esta trancada\n")
    			}
    		pare
    		caso 3:

    			sala5()
    			saida=verdadeiro
    		pare
    		caso 9:
    			menuutil()
    		pare
    	}
    }}
		
	
	funcao sala7(){
	   escreva("------------\n")
        escreva("---SALA 7---\n")
        escreva("------------\n")
		escreva("Apos abrir a porta você desce umas escadas, Encontra-se num átrio com um pequeno armário destruído e novamente umas escadas que descem em direção a uma nova porta\n")
		logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(7)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
    	    caso 1:
    	    		se(C10==falso){
    	    			limpa()
    				escreva("Você investiga os destroços do armário, e encontra uma chave\n")
    				C10=verdadeiro
    			}senao{
    				escreva("Nos destrocos do armario, nao encontra mais nada\n")
    			}
    			pare
			caso 2:
			limpa()
    			se(C3==verdadeiro){
    				sala3()
    				saida=verdadeiro
    			} senao {
    				escreva("Você não consegue abrir esta porta, Esta trancada\n")
    			}
			pare
			caso 3:
			limpa()
				sala6()
				saida=verdadeiro
			pare
			caso 9:
				menuutil()
			pare
    	  }
    }}
    
    funcao sala8(){
        escreva("------------\n")
        escreva("---SALA 8---\n")
        escreva("------------\n")
        escreva("Nesta pequena sala, com apenas uma cama e um armário, encontra-se também um homem dentro de uma cela\n")
        escreva("Noutro canto da sala existe um buraco na parede que parece que vai dar a outra sala\n")
        
        logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(8)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
    	    caso 1:
    	    		limpa()	
                escreva("A única coisa de interessante sobre esta cama é o quão desconfortável parece\n")
            pare
            caso 2:
            limpa()
                escreva("O armário esta tao danificado que nem consegue abrir \n")    
            pare
            caso 3:
            limpa()
                escreva("O homem olha-nos com desinteresse, mas oferece-se a dar uma informação importante em troco de alguma comida\n") 
                escreva("\n")   
                se(food==verdadeiro e fed==falso) {
                    escreva("Ao dar a comida que você tinha ao homem, ele diz: A única maneira de sair daqui é fugir por uma sala trancada, ouvi dizer que a chave para abrir essa porta esta ao pé da cela onde acordou\n")
                    fed=verdadeiro
                } senao {
                    escreva("Como você não tem comida para dar ao homem, não há mais nada que possa fazer\n")
                }
            pare
            caso 4:
            limpa()
                escreva("Ao inspecionar a porta da cela, você constata que esta tao enferrujada que é inutil tentar abri-la\n")        
            pare
            caso 5:
            limpa()
                escreva("Você atravessa o buraco na parede rumo a outra sala\n")    
                sala12()
                saida=verdadeiro
            pare
            caso 6:
                sala4()
                saida=verdadeiro
            pare    
            caso 9:
                menuutil()
            pare    
    	  }
    }}
    
    
    funcao sala9(){
        escreva("Assim que entra nesta sala, enormes laminas descem do teto e infelizmente você não teve tempo de reagir\n")
        vidas=0
        // GAME OVER
    }
    
    funcao sala10(){
        escreva("-------------\n")
        escreva("---SALA 10---\n")
        escreva("-------------\n")
        escreva("Esta sala parece ser uma antiga sala dos guardas, devido as varias armas partidas que estão no chão, deve de haver algo de útil aqui\n")

        logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(10)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
            caso 1:
            	se (inv[0]==""){
                escreva("Você encontrou um amuleto magico, escondido atrás de uma estante\n")
                inventario("Amuleto do Mago",0)
            	} senao {
            		escreva(StringLooted)
            	}
                pare
            caso 2:
            se (CB2==falso){
                escreva("O Velho armário, contem os pertences dos guardas, nomeadamente uma chave encrustada a ouro que parece ser importante\n")
                CB2=verdadeiro
            } senao {
            	escreva(StringLooted)
            }
            
                pare
            caso 3:
            limpa()
                sala14()
                pare
            caso 4:
            limpa()
                sala6()
                saida=verdadeiro
                pare    
            caso 9:
                menuutil()
            pare        
        }    
    }}
    
    funcao sala11(){
        escreva("-------------\n")
        escreva("---SALA 11---\n")
        escreva("-------------\n")

        escreva("Nesta sala você consegue sentir uma corrente de ar fresco que emana da porta\n")    
	   se (C11==verdadeiro){
	   	escreva("Utilizando a chave você abre a porta e consegue escapar da masmorra\n")
	   vidas=-11	
        //WIN GAME
        } senao {
        	escreva("Infelizmente apesar de estar tao perto da saída, a porta encontra-se trancada\n")
        	sala15()
        	
        }
    }

    funcao sala12(){
        escreva("-------------\n")
        escreva("---SALA 12---\n")
        escreva("-------------\n")

        escreva("Esta sala é o arsenal da masmorra, inúmeras armas e equipamento estão espalhadas por varias caixas\n")

        logico saida=falso
    	inteiro opcaol
    	logico check=falso
    	enquanto(saida != verdadeiro){
    	    textosalas(12)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
            caso 1:
            limpa()
            	se (inv[3]==""){
                escreva("Você encontra uma armadura resistente em boas condições no meio do equipamento\n")

                inventario("Armadura",3)
            	} senao{
            		escreva(StringLooted)
            	}
                pare
            caso 2:
            limpa()
            	se (check==falso){
                escreva("Você encontra uma poção de regeneração, no meio equipamento dos guardas\n")    
                vidas+=1
                escreva("Esta poção aumenta a sua vida tem agora: ",vidas," vidas\n")
            	} senao {
            	  escreva(StringLooted)
            	}
                pare
            caso 3:
            	limpa()		
                sala13()
			saida=verdadeiro
            pare
            caso 4:
            	limpa()
                sala8()
                saida=verdadeiro
            pare
            caso 9:
                menuutil()
            pare
        }
    }}

    funcao sala13(){
    	   escreva("-------------\n")
        escreva("---SALA 13---\n")
        escreva("-------------\n")
    	// varieaveis para ver se os contentores ja foram looted
    	logico check1=falso,check2=falso		
        se(defeatMutante==falso){
            escreva("Mal entra nesta sala um mutante ataca-o\n")
            escreva("\n")
            pera()
            se(inv[3]!=""){
                inteiro valor = u.sorteia(1, 10)
                se(valor>2){
                    escreva("Voce consegue matar o mutante\n")
                    defeatMutante=verdadeiro
                }senao{
                    escreva("Você consegue matar o mutante,\n mas perdeu uma vida\n")
                    vidas-=1
                    defeatMutante=verdadeiro
                }
            } senao {
                inteiro valor = u.sorteia(1, 9)
                se(valor>6){
                    escreva("Você consegue matar o mutante\n")
                    vidas-=1
                    defeatMutante=verdadeiro
                }senao{
                    escreva("Você consegue matar o mutante, mas perdeu duas vidas\n")
                    vidas-=2
                    defeatMutante=verdadeiro
                }
            }
        }senao{
        	escreva("Nesta sala só esta o corpo do mutante que matou anteriormente\n")

        } pera()
		escreva("\n")
		escreva("Já pode inspecionar a sala livremente\n")
		pera()
        
        logico saida=falso
    	inteiro opcaol
    	enquanto(saida != verdadeiro){
    	    textosalas(13)
    	    escreva(StringQuestao)
    	    leia(opcaol)
    	    escolha(opcaol){
        	caso 1:
        	limpa()
        		escreva("Aqui não há nada\n")
            pare
            caso 2:
            limpa()
            	se (check2==falso){
                escreva("Você encontra uma espada de bronze\n")

                inventario("Espada de Bronze",4)
                check2=verdadeiro
            	} senao{
            		escreva(StringLooted)
            	}
            pare
            caso 3:
            limpa()
            	cadeia death
                escreva("Antes de continuar para a próxima sala você tem um mau pressentimento, Deseja Proseguir [s]=sim\n")
                leia(death)
                se (death=="s"){
                	saida=verdadeiro
                	limpa()
                	sala9()
                	
                } senao {
                	
                }
            pare
            caso 4:
            limpa()
            	sala12()
            	saida=verdadeiro
            pare
            caso 9:
            menuutil()
            pare
    	    }
    }}

    funcao sala14(){

        logico saida=falso
    	inteiro opcaol
    	se (inv[0]!=""){
    	   escreva("-------------\n")
        escreva("---SALA 14---\n")
        escreva("-------------\n")	
    	escreva("Esta sala é um corredor com duas bifurcações, a primeira vai dar a um beco escuro onde você pode ser um ser com uma presença intimidante, a segunda parece ser muito mais segura\n")
    	enquanto(saida != verdadeiro){
    	    textosalas(14)
    	    escreva(StringQuestao)
    	    leia(opcaol)
		    escolha(opcaol){
        	caso 1:
                enquanto (defeatminotauro==falso){
                	se (inv[2]!="" e inv[3]!=""){
                		escreva("Você derrota o minotauro! Esta ação heroica concede-lhe uma Bênção Divina\n")
                		inventario("Bênção Divina",1) 
                		defeatminotauro=verdadeiro
                		//saida=verdadeiro
                		
                	} senao {
                		escreva("Infelizmente o Minotauro provou ser mais forte do que voce\n")
                		vidas=0
                		defeatminotauro=verdadeiro
                		saida=verdadeiro
                	}
                }
            pare
            caso 2:
                sala15()
                saida=verdadeiro
            pare
            caso 3:
                sala10()
                saida=verdadeiro
            pare
    	    }
		    
		}
    	} senao{
    		escreva("Esta sala esta bloqueada por um feitiço\n")
    	}
    	
    }



    funcao sala15(){
        escreva("Esta sala da acesso aos aposentos de CERBERUS O SENHOR DA MASMORRA\n")
	   			
        
        
        logico saida=falso
	   inteiro opcaol
		
		
		enquanto(saida != verdadeiro){
		    textosalas(15)
		    leia(opcaol)
		
		escolha(opcaol){
		caso 1:
			enquanto(defeatboss==falso){
				se (defeatminotauro==verdadeiro){
					escreva("Utilizando a Bênção divina você heroicamente derrota Cerberus, ganhando assim a sua liberdade\n")
					defeatboss=verdadeiro
					//saida=verdadeiro
					
				} senao {
					se (inv[2]!="" e inv[3]!=""){
					inteiro chance=u.sorteia(0, 1)
						se (chance==1){
							escreva("Depois de uma longa e dura batalha CERBERUS jaz morto e você emerge vitorioso\n")
							defeatboss=verdadeiro
						     saida=verdadeiro
						} senao {
							escreva("Apesar de ter oferecido muita luta e de ter quase superado CERBERUS, este acaba por sair vitorioso")
							vidas=0
							defeatboss=verdadeiro
						     saida=verdadeiro
						}





					
					} senao{
						escreva("Você não chega aos calcanhares de CERBERUS, ele facilmente adiciona-o a sua longa lista de vitimas\n")
						vidas=0
						defeatboss=verdadeiro
						saida=verdadeiro
					}
						
				}
			}
		pare
		caso 2:
			se (defeatboss==falso){
			escreva("Cerberus o senhor da masmorra impede a sua passagem\n") 
		} 	senao{
			sala11()
			saida=verdadeiro
		}
		pare
		caso 3:
			sala14()
		pare
    }
    }
        
        

    }

	
	//funcao que vai ter texto das várias salas 

	funcao textosalas(inteiro nsal){
		escolha (nsal){
		caso 0:
    		escreva(divider)
    		escreva("[1] Investigar a cama\n")
    		escreva("[2] Investigar o baú\n")
    		escreva("[3] Investigar o armário\n")
    		escreva("[4] Investigar a porta da cela\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 1:
    		escreva(divider)
    		escreva("[1] Investigar a mesa\n")
    		escreva("[2] Investigar a sala 2\n")
    		escreva("[3] Investigar a sala 5\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 2:
    		escreva(divider)
    		escreva("[1] Investigar o Bau\n")
    		escreva("[2] Voltar a sala 1\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 3:
    		escreva(divider)
    		escreva("[1] Enfrentar Centauro\n")
    		escreva("[2] Voltar a sala 7\n")	
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 4:
    		escreva(divider)
    		escreva("[1] Investigar Sala 8\n")
    		escreva("[2] Voltar a sala 5\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 5:
    		escreva(divider)
    		escreva("[1] Investigar o Pote\n")
    		escreva("[2] Investigar Sala 4\n")
    		escreva("[3] Investigar Sala 6\n")
    		escreva("[4] Voltar sala 1\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 6:
    		escreva(divider)
    		escreva("[1] Investigar Sala 7\n")
    		escreva("[2] Investigar Sala 10\n")
    		escreva("[3] Voltar a sala 5\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 7:
    		escreva(divider)
    		escreva("[1] Investigar o armário\n")
    		escreva("[2] Investigar Sala 3\n")
    		escreva("[3] Voltar a sala 6\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 8:
    		escreva(divider)
    		escreva("[1] Investigar a cama\n")
    		escreva("[2] Investigar o armário\n")
    		escreva("[3] Interagir com Prisioneiro dentro da cela\n")
    		escreva("[4] Investigar a porta da cela\n")
    		escreva("[5] Investigar Sala 12\n")
    		escreva("[6] Voltar a sala 4\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 9:
		pare
		caso 10:
    		escreva(divider)
    		escreva("[1] Investigar a mobília\n")
    		escreva("[2] Investigar o armário\n")
    		escreva("[3] Investigar Sala 14\n")
    		escreva("[4] Voltar a sala 6\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 11:
    		escreva(divider)
    		escreva("[1] Sair da Masmorra Do Exilio\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 12:
    		escreva(divider)
    		escreva("[1] Investigar o baú\n")
    		escreva("[2] Investigar o armário\n")
    		escreva("[3] Investigar Sala 13\n")
    		escreva("[4] Voltar a sala 8\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 13:
    		escreva(divider)
    		escreva("[1] Investigar a cama\n")
    		escreva("[2] Investigar o baú\n")
    		escreva("[3] Investigar Sala 9\n")
    		escreva("[4] Voltar a sala 12\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare
		caso 14:
    		escreva(divider)
    		escreva("[1] Enfrentar Minotauro\n")
    		escreva("[2] Investigar Sala 15\n")
    		escreva("[3] Voltar a sala 10\n")
    		escreva(divider)
    		escreva(StringMenuUtil)
		pare	
		caso 15:
        	escreva(divider)
        	escreva("[1] Enfrentar Cerberus\n")
        	escreva("[2] Investigar Sala 11\n")
        	escreva("[3] Voltar a sala 14\n")
        	escreva(divider)
        	escreva(StringMenuUtil)
		pare
		}
	}
	
	// Funcao inventario
	funcao inventario(cadeia coisa,inteiro index){
		se (coisa != ""){
		  inv[index]=coisa
		  escreva("Item ("+coisa+") adicionado ao inventario!\n")
		}
		senao{
			escreva("Voce possui os seguintes items\n")
		
    		para(inteiro i=0;i<5;i++){
                se(inv[i] != "") {
                    escreva(" - ",inv[i],"\n")
                }
    		}
		}
	}
	
	// Funcao menu util
	funcao menuutil(){
		inteiro opcao3
		
		limpa()
		
		escreva(divider)
		escreva("--------------- PERSONAGEM ---------------\n")
		escreva(divider)
		escreva("[1] Vida\n")
		escreva("[2] Inventario\n")
		escreva("[3] Voltar ao jogo\n")
		escreva(divider)
		
		leia(opcao3)
		    escolha(opcao3){
			caso 1:
			limpa()
			    escreva("Você tem ",vidas," vidas\n")
			pare
			caso 2:
			limpa()
			    inventario("",0)
			pare
			caso 3:
			    limpa()
			pare

		    }
		    
		}

	funcao pera(){
		u.aguarde(3800)
	}
		

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */