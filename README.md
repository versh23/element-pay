
### Wallet
```graphviz
digraph finite_state_machine {
    Чаевые [shape=box];
    Инвойс [shape=diamond];
    Чаевые -> Инвойс;

    Инвойс -> PaymentPage;
    PaymentPage -> Отзыв;
    Инвойс -> РБКмани;
 
}
```