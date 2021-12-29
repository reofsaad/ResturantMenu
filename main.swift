//
//  main.swift
//  ResturantMenues
//
//  Created by REOF ALMESHARI on 24/05/1443 AH.

/* ..Preview Menu://
   1.1 Dishes
    1.1dishes with main ingredeiants  included and price" "maybe we use array"  insede loop  "
   2. Order total
     2.1 Preview order and the final total
   3. Rate
     3.1 rate the restaurant 
   4. filtering 
   5. Exit
   
What we need :
 - [ ]  Variables and Constants
 - [ ]  At least one Conditional Statement
 - [ ]  At least one loop
 - [where should do it in :) ]  At least one type of Collections
 - [ ]  readLine() and print()
 - [ ]  Optional type
 - [ ]  Function(s)
 - [ ]  At least one Model (class, struct or enum)
*/
//

import Foundation

class ResturantMenu{
    var UserChoice:String=""
    var order = 0
    var OrderMsg = "  Add to the Order 📝? Yes , No "
    var Total = 0
    //var quantity = 0
    let line = "-----------------------------------------------------"
    let AllDishes = [ "  01. Kabsa","  02. Hares","  03. Gursan", "  04. Hiniy","  05. Saleeg"]
    let FoodFiltering = ["Dessert" , "Salty"]
    var userOrder :[String] = []
}
class ResturantFunc : ResturantMenu{
    
    func Menu()->String{
        let menu =  """
     -----------------------------------------------------
               🍽Welcome to Saudi Restuarant !🍽
     -----------------------------------------------------
        1. Veiw Dishes 🍽!
     
        2. Order Total 🧾💰!
     
        3. Rating🌟 !
     
        4. Filtering🥘🍧!
     
        5. Thank you  !
     
     -----------------------------------------------------
        Your Choice is 📝:
     """
        return menu
     
    }
    func Dishes(){
    print(line)
    print(" \t \t🥘The Most Popular Saudi Dishes 🥘")
    print(line)
        for  i in AllDishes{
            
            print(" \(i) ")
            print("")
        }
     
     
        print(line)
        print("  Your Choice is 📝: ")
        
        print(line)
        if let UserInput=readLine(){
            UserChoice=UserInput
        //switch
            DishesDescription()
        }

    }
        
        
    func PlaceOrder(_ Price:Int , DishName:String){
        if let UserInput=readLine(){
            UserChoice=UserInput
           
        if UserChoice == "yes" || UserChoice == "Yes" || UserChoice == "1"{
           Total+=Price
            order+=1
            userOrder.append(DishName)
            
       
            print(line)
            
            print(" Added Successfuly ! ✅✅")
            print(line)
            }
            print(" Want Something to Drink ?🍶 ")
            print(line)
            if let UserInput=readLine(){
                UserChoice=UserInput

            if UserChoice == "yes" || UserChoice == "Yes" || UserChoice == "1"{
                Drinks()


            }}}
        
    }
        
    func OrderTotal(){
        print(line)
       
        print("  Your Dishes are 🍽 :")
        print(line)
        for i in userOrder {
            print("  \(i) ")}
        print(line)
        let total = """
     🍽 You Ordered \(order) Dishes , The Total is \(Total) SR 🍽


    """
        print(total)
        print(line)
    /*
     if user choose dish and want it
     the app automatically add it with their price
     So 1. Let us create func for Order
        2. Now when user enter yes or 1
     the App should add the price and when user done and want to check out the
     app show the Total followed by Dishes name
     */
   
      
    }

    func Rating(){
        print(line)
        
        print("\n ⭐️Please Rate the Food  from 1 to 4⭐️ \n")
        
        print(line)
        print("")
        if let UserInput=readLine(){
            UserChoice=UserInput}
           
        switch UserChoice {
            
            case "1": print("  ⭐️ ")
            case "2": print(" ⭐️ ⭐️ ")
            case "3": print(" ⭐️ ⭐️ ⭐️")
            case "4": print(" ⭐️ ⭐️ ⭐️ ⭐️ ")
           
        default: print(" Please Try Again 🛑")
        
            
        }
        print("")
        print(line)
    }
        
        
    func Filtering(){
        print(line)
        print(" --- 🍥 Choose Which type of food you want 🍥 ---")
        print(line)
        print(" 01. Dessert 🍨")
        print(" 02. Salty 🫓")
        print(line)
        print("\n Your Choice is : ")
        print(line)
        if let UserInput=readLine(){
            UserChoice=UserInput
            switch UserChoice{
            case "1" :
               Dessert()
                    
            case "2" : Salty()
            default: print(" Please Try Again 🛑")
            }
        }
        
    }
        
        
    func Dessert(){
        print(" Choose Your Dessert 🍧: ")
        print(line)
        print(" 01. Hininy")
        print(" 02. Geshed")
        print(line)
        print(" Your Choice is 📝: ")
        print(line)
        if let UserInput=readLine(){
            UserChoice=UserInput
            switch UserChoice{
    case "1" :
        print("\n Hininy is a traditional Saudi Arabian dish consisting of dates, butter, and brown bread. The whole concoction is then additionally flavored with spices such as saffron and cardamom. The dish is a specialty of Najd, where it is usually prepared during winter. 20SR \n")
        print(line)
        print(OrderMsg)
        print(line)
        PlaceOrder(20 , DishName:"Hininy" )
                
    case "2" :
                print("\n Geshed ")
                print(line)
                print(OrderMsg)
                print(line)
                PlaceOrder(20 , DishName:"Geshed" )
            default: print(" Please Try Again 🛑 ")
            }}}
        
        
    func Salty(){
        print(" Choose Your MainDish 🥘 : ")
        print(" 01. Kabsa\n")
        print(" 02. Harees\n")
        print( "03. Gursan\n")
        print(" 04. Saleeg\n")
   
        print(line)
        print("Your Choice is 📝: ")
        print(line)
        PlaceOrder(20 , DishName: "Gursan")
 
        
    }

    func Drinks(){
        print(line)
        print(" Choose Your Drink : 🍶\n")
        print(" 01. Cola 🍹\n")
        print(" 02. Water 🥤")
        print(line)
        print(" Your Choice is 📝: ")
        print(line)
        if let UserInput=readLine(){
            UserChoice=UserInput
            switch UserChoice{
    case "1" :
        print(" Cola 🍹, 5 SR")
        print(line)
        print(OrderMsg)
        print(line)
        PlaceOrder(5 , DishName:"Cola" )
    case "2" : print(" Water 🥤, 1SR ")
                print(line)
                print(OrderMsg)
                print(line)
                PlaceOrder(1 , DishName:"Water" )
            default: print(" Please Try Again 🛑 ")
            }}

        
    }

    func DishesDescription(){
        print(line)
       
        switch UserChoice{
        case "1" :
           
           print("\n  Kabsa is a rice dish that is enjoyed throughout the Gulf States of the Arabian Peninsula. 10SR ")
          
           // print(dish)
            print(line)
            print("")
            print(OrderMsg)
            print("")
            print(line)
            PlaceOrder(10 , DishName: "Kabsa")
 
            
           
        case "2" :
            print("\n  Harees is usually prepared with coarse ground wheat which is mixed with water, butter, and meat, then left to soak overnight.  15SR \n")
            print(line)
            print("")
            print(OrderMsg)
            print("")
            print(line)
            PlaceOrder(15 , DishName: "Harees")
    //            else{Dishes()}
                
            
     
        case "3" :
            
            print("\n  Gursan is one of Saudi Arabian national dishes made by placing dry, paper-thin sheets of bread atop meat and vegetables in a broth until the bread pieces soak up all of the flavorful juices. 20SR \n")
            
            print(line)
            print("")
            print(OrderMsg)
            print("")
            print(line)
            PlaceOrder(20 , DishName: "Gursan")

            
        case "4" :
            print("\n  Hininy is a traditional Saudi Arabian dish consisting of dates, butter, and brown bread. The whole concoction is then additionally flavored with spices such as saffron and cardamom. The dish is a specialty of Najd, where it is usually prepared during winter. 20SR\n")
            print(line)
            print("")
            print(OrderMsg)
            print("")
            print(line)
            PlaceOrder(20 , DishName:"Hininy" )

           
        case "5":
            print("\n  Hailing from Hejaz, saleeg is a traditional Saudi Arabian rice dish consisting of creamy, porridge-like short-grain rice and roasted meat. Chicken is the most common meat choice, and it is typically boiled in water with spices before it is roasted. 10SR\n")
            print(line)
            print("")
            print(OrderMsg)
            print("")
            print(line)
            PlaceOrder(10 , DishName: "Saleeg")

            
        case "0":
           
               print(Menu())
           
        default:
            print(" Please Try Again 🛑")

        }
    }
}//End of Class

var My=ResturantFunc() //Declare instance

repeat{

   print(My.Menu())

if let UserInput=readLine(){
    My.UserChoice=UserInput
//switch
    switch My.UserChoice{
case "1" :
        My.Dishes()
 
case "2" :
        My.OrderTotal()
case "3" :
        My.Rating()
case "4" :
        My.Filtering()
case "5":
    print("Thank you !")
    break
default:
    print("Try Again ")

    }}}while My.UserChoice != "5"

