in this chat i paste some code in flutter component style you convert into react component style

Blueprint for my react component:

H1("heading") => <Title></Title>
H2("heading") => <H1></H1>
H3("heading") => <H2></H2>
H4("heading") => <H4></H4>
P("para") => <Para></Para>

Li("item1") => <List
Li("item2") type="ordered" # ordered | unordered
Li("item3") items={[
"item1","item2","item3"
]}
/>

Code(title: 'style.css', code: code16, type: 'css'), => <Syntax title= 'style.css' language="css" code={code} />
Note("note") => <Note>note</Note>
Table() => <Table><thead></thead><tbody></tbody></Table>
