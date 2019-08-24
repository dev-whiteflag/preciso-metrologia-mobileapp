## Preciso Metrologia - Mobile App
# Introdução

# Routing do Aplicativo
## ID 000 - Loading Screen
A Primeira tela é a _loading screen_, controlada pelo _Android SDK_, contem a logo da _Preciso Metrologia_ dentro de um quadrado branco, com um fundo colorido feito de gradientes.

`Cond1: ID 000 -> ID 001 somente SE o usuário NÃO estiver logado. Cond2: ID 000 -> ID 002 somente SE o usuário estiver logado.`

## ID 001 - Login Screen
O Usuário somente verá esta página se a condição `Cond1` for satisfeita, é composta por um fundo baseado na `Brightness` selecionada pelo usuário nas opções.

`TODO: Select brightness mode switch on Configurações screen. Issue: dev-whiteflag/preciso-metrologia-mobileapp#7`

Em cima do fundo, há a logo da _Preciso Metrologia_ e os campos de _Email_ e _Senha_ junto com um botão usado para confirmar a ação de login.

Quando o Usuário colocar as informações, o aplicativo verificará com o servidor _Firebase_ se as informações inseridas correspondem a alguma conta no servidor.

`TODO: Missing Error codes and Error messages in Login Screen. Issue: dev-whiteflag/preciso-metrologia-mobileapp#32`

Após o botão ser pressionar o botão e se a `Cond3` for satisfeita, o Aplicativo verificará atributos relacionados a conta do funcionário no servidor _Firebase_.

`Cond3: O Login somente SERÁ feito SE o usuário tiver uma CONTA no servidor da Preciso e SE NÃO estiver com seus privilégios revogados.`

`TODO: Check is user is authorized to use the app in Login Screen. Issue: dev-whiteflag/preciso-metrologia-mobileapp#33`

_Atributos especificos de Usuário: Nome, ID Preciso, Autorização, Lista de Certificados para o Dia, Lista de Certificados já Completados._

`TODO: Receive information about the user and other global information in Login Screen. Issue: dev-whiteflag/preciso-metrologia-mobileapp#34`

A Verificação incluirá outros atributos globais que serão usados por todos os usuários e deverá ser seguido pelos mesmos.

_Atributos Globais: Validadores, Padrões, Certificados e outras Atualizações relacionadas ao banco de dados do Aplicativo._

