
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class EstoqueApp extends JFrame {

    private ArrayList<Produto> estoque;
    private DefaultTableModel tableModel;
    private JTable table;

    public EstoqueApp() {
        estoque = new ArrayList<>();

        setTitle("Controle de Estoque");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 300);
        setLocationRelativeTo(null);

        // Criação dos componentes Swing
        tableModel = new DefaultTableModel(new Object[] { "Nome", "Quantidade", "Preço", "Descrição" }, 0);
        table = new JTable(tableModel);
        JScrollPane scrollPane = new JScrollPane(table);
        JButton adicionarButton = new JButton("Adicionar Produto");
        JButton atualizarButton = new JButton("Atualizar Produto");

        // Configuração do layout
        setLayout(new BorderLayout());
        add(scrollPane, BorderLayout.CENTER);

        JPanel buttonPanel = new JPanel(new FlowLayout());
        buttonPanel.add(adicionarButton);
        buttonPanel.add(atualizarButton);
        add(buttonPanel, BorderLayout.SOUTH);

        // Ação do botão Adicionar Produto
        adicionarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                abrirJanelaAdicionarProduto();
            }
        });

        // Ação do botão Atualizar Produto
        atualizarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int selectedRow = table.getSelectedRow();
                if (selectedRow >= 0) {
                    Produto produto = estoque.get(selectedRow);
                    abrirJanelaAtualizarProduto(produto);
                } else {
                    JOptionPane.showMessageDialog(EstoqueApp.this, "Selecione um produto para atualizar.", "Erro",
                            JOptionPane.ERROR_MESSAGE);
                }
            }
        });
    }

    // Método para abrir a janela de adicionar produto
    private void abrirJanelaAdicionarProduto() {
        JFrame janelaAdicionar = new JFrame("Adicionar Produto");
        janelaAdicionar.setSize(300, 200);
        janelaAdicionar.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        janelaAdicionar.setLocationRelativeTo(this);

        // Criação dos componentes Swing na janela de adicionar produto
        JLabel nomeLabel = new JLabel("Nome:");
        JTextField nomeField = new JTextField(20);
        JLabel quantidadeLabel = new JLabel("Quantidade:");
        JSpinner quantidadeSpinner = new JSpinner(new SpinnerNumberModel(0, 0, Integer.MAX_VALUE, 1));
        JLabel precoLabel = new JLabel("Preço:");
        JTextField precoField = new JTextField(10);
        JLabel descricaoLabel = new JLabel("Descrição:");
        JTextField descricaoField = new JTextField(30);
        JButton adicionarButton = new JButton("Adicionar");

        // Configuração do layout na janela de adicionar produto
        janelaAdicionar.setLayout(new FlowLayout());
        janelaAdicionar.add(nomeLabel);
        janelaAdicionar.add(nomeField);
        janelaAdicionar.add(quantidadeLabel);
        janelaAdicionar.add(quantidadeSpinner);
        janelaAdicionar.add(precoLabel);
        janelaAdicionar.add(precoField);
        janelaAdicionar.add(descricaoLabel);
        janelaAdicionar.add(descricaoField);
        janelaAdicionar.add(adicionarButton);

        // Ação do botão Adicionar
        adicionarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String nome = nomeField.getText();
                int quantidade = (int) quantidadeSpinner.getValue();
                double preco = Double.parseDouble(precoField.getText());
                String descricao = descricaoField.getText();

                Produto novoProduto = new Produto(nome, quantidade, preco, descricao);
                estoque.add(novoProduto);
                adicionarProdutoNaTabela(novoProduto);

                janelaAdicionar.dispose();
            }
        });

        janelaAdicionar.setVisible(true);
    }

    // Método para abrir a janela de atualizar produto
    private void abrirJanelaAtualizarProduto(Produto produto) {
        JFrame janelaAtualizar = new JFrame("Atualizar Produto");
        janelaAtualizar.setSize(300, 200);
        janelaAtualizar.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        janelaAtualizar.setLocationRelativeTo(this);

        // Criação dos componentes Swing na janela de atualizar produto
        JLabel nomeLabel = new JLabel("Nome:");
        JTextField nomeField = new JTextField(produto.getNome(), 20);
        JLabel quantidadeLabel = new JLabel("Quantidade:");
        JSpinner quantidadeSpinner = new JSpinner(
                new SpinnerNumberModel(produto.getQuantidade(), 0, Integer.MAX_VALUE, 1));
        JLabel precoLabel = new JLabel("Preço:");
        JTextField precoField = new JTextField(String.valueOf(produto.getPreco()), 10);
        JLabel descricaoLabel = new JLabel("Descrição:");
        JTextField descricaoField = new JTextField(produto.getDescricao(), 30);
        JButton atualizarButton = new JButton("Atualizar");

        // Configuração do layout na janela de atualizar produto
        janelaAtualizar.setLayout(new FlowLayout());
        janelaAtualizar.add(nomeLabel);
        janelaAtualizar.add(nomeField);
        janelaAtualizar.add(quantidadeLabel);
        janelaAtualizar.add(quantidadeSpinner);
        janelaAtualizar.add(precoLabel);
        janelaAtualizar.add(precoField);
        janelaAtualizar.add(descricaoLabel);
        janelaAtualizar.add(descricaoField);
        janelaAtualizar.add(atualizarButton);

        // Ação do botão Atualizar
        atualizarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                produto.setNome(nomeField.getText());
                produto.setQuantidade((int) quantidadeSpinner.getValue());
                produto.setPreco(Double.parseDouble(precoField.getText()));
                produto.setDescricao(descricaoField.getText());

                atualizarProdutoNaTabela(produto);

                janelaAtualizar.dispose();
            }
        });

        janelaAtualizar.setVisible(true);
    }

    // Método para adicionar um produto na tabela
    private void adicionarProdutoNaTabela(Produto produto) {
        Object[] rowData = { produto.getNome(), produto.getQuantidade(), produto.getPreco(), produto.getDescricao() };
        tableModel.addRow(rowData);
    }

    // Método para atualizar um produto na tabela
    private void atualizarProdutoNaTabela(Produto produto) {
        int selectedRow = table.getSelectedRow();
        tableModel.setValueAt(produto.getNome(), selectedRow, 0);
        tableModel.setValueAt(produto.getQuantidade(), selectedRow, 1);
        tableModel.setValueAt(produto.getPreco(), selectedRow, 2);
        tableModel.setValueAt(produto.getDescricao(), selectedRow, 3);
    }

    // Classe Produto para representar os produtos no estoque

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                EstoqueApp app = new EstoqueApp();
                app.setVisible(true);
            }
        });
    }
}
