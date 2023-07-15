import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class teste_dinamico_formulario extends JFrame {
    private JTextField[] textFields;

    public teste_dinamico_formulario() {
        setTitle("Dynamic Form Example");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Pergunta ao usuário a quantidade de campos
        int numberOfFields = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de campos:"));

        // Cria um painel para adicionar os campos
        JPanel panel = new JPanel(new GridLayout(numberOfFields, 2));

        // Cria os campos de texto com base na quantidade especificada
        textFields = new JTextField[numberOfFields];
        for (int i = 0; i < numberOfFields; i++) {
            JLabel label = new JLabel("Campo " + (i + 1) + ":");
            textFields[i] = new JTextField();
            panel.add(label);
            panel.add(textFields[i]);
        }

        // Adiciona o painel ao frame
        getContentPane().add(panel);

        // Botão para imprimir os valores dos campos
        JButton submitButton = new JButton("Enviar");
        submitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                for (JTextField textField : textFields) {
                    System.out.println(textField.getText());
                }
            }
        });
        getContentPane().add(submitButton, BorderLayout.SOUTH);

        pack();
        setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new teste_dinamico_formulario();
            }
        });
    }
}