# Ajustando e preenchendo views no SwiftUI

A propósito desse `readme` é tentar entender responder como exatamente a `View` calcula seu tamanho? 

Existem dois tipos de `Views` que veremos abaixo: **ajuste** e **preenchimento**.

### Ajustando as Views

Uma `View` ajusta e calcula seu tamanho com base em seu conteúdo. Ela tenta ajustar seu conteúdo no espaço disponível e retornando o seu tamanho apropriado. A maioria das `View` que usamos no SwiftUI é adequada automaticamente. Por exemplo `Button`, `Stack`, `Text`, `Toggle` e `Selector` eles usam o conteúdo exibido para calcular seu tamanho. Vamos dar uma olhada no pequeno exemplo.

```swift
struct RootView: View {
    var body: some View {
        HStack {
            Text("Hello World!")
        }.border(Color.red)
    }
}
```

Como você pode ver no exemplo acima, a `HStack` tem o tamanho de seu conteúdo. As `Stack` sempre irão usa o espaço necessário para colocar seus filhos.

### Preenchendo as Views

Uma `View` tenta preencher todo o espaço disponível fornecido pela `View` principal. Geralmente, essa `View` não possui uma maneira adequada de entender seu conteúdo e por isso ele preenche todo o espaço livre. O **SwiftUI** nos fornece várias `View` de preenchimento. Por exemplo, `Shape`, `Space`, `Divider` e `Color`

Sim. `Color` também cria uma `View` de preenchimento. Ela consome todo o espaço disponível fornecido pelo pai, um outro exemplo seria o `GeometryReader` ele também consome todo o espaço do pai e  permite que você coloque seus filhos usando um cálculo manual com base na instância especificada do `GeometryProxy`, que contém todas as informações necessárias sobre o espaço disponível e a área segura. Vamos dar uma olhada em outro exemplo.

```swift
struct RootView: View {
    var body: some View {
       ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            HStack {
                Circle().fill(Color.green)
            }.border(Color.blue)
        }
    }
}
```

### Conclusão

O que vimos nesse `readme` é um pouco do funcionamento do `SwiftUI` de como funciona o mecanismo de preenchimento e ajuste, como essa base vamos evoluir o aprendizagem explorando cada vez mais os elementos que compõem a `View` e como podemos modificar alguns comportamentos.
