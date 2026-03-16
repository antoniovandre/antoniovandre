# Projeto Mathematical Ramblings.

# Lançador do MRRealTimeUserVisitor, versão ps1.

# Última atualização: 18-12-2022.

$temp = $pwd

Set-Location -Path F:\AntonioVandrePedrosaFurtunatoGomes\Java # Caminho para o diretório pessoal de aplicações Java.

java "-Djava.library.path=JavaFX\" -cp "JavaFX\javafx.base.jar;JavaFX\javafx.controls.jar;JavaFX\javafx.fxml.jar;JavaFX\javafx.graphics.jar;JavaFX\javafx.media.jar;JavaFX\javafx.swing.jar;JavaFX\javafx.web.jar;JavaFX\javafx-swt.jar;." .\MRRealTimeUserVisitor.java

Set-Location -Path $temp

