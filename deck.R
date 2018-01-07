setup<-function(deck){
    Deck=deck
    
    shuffle<-function(){
        random<-sample(1:52, size=52)
        assign("Deck", Deck[random,], envir=parent.env( environment()))
    }
    
    deal<-function(){
        card<-Deck[1,]
        assign("Deck", Deck[-1, ], envir = parent.env( environment()))
        card
    }
    
    
    show_env<-function(){
       list(ran.in = environment(), parent=parent.env( environment()),
            objects = ls.str(environment()),globalevnstr=globalenv())
    }
    list(shuffles=shuffle, deal=deal, show_env=show_env)
}