import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JMenuBar;
import javax.swing.JPopupMenu;
import java.awt.Component;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTextArea;
import java.awt.Dimension;

public class Login extends JFrame {
	private JTextField txtUsuario;
	private JTextField txtSenha;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login frame = new Login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Login() {
		setSize(new Dimension(439, 287));
		getContentPane().setLayout(null);
				
		txtUsuario = new JTextField();
		txtUsuario.setBounds(119, 70, 168, 20);
		getContentPane().add(txtUsuario);
		txtUsuario.setColumns(10);
		
		JLabel lblUsuario = new JLabel("Usuario");
		lblUsuario.setBounds(119, 56, 46, 14);
		getContentPane().add(lblUsuario);
		
		txtSenha = new JTextField();
		txtSenha.setBounds(119, 122, 168, 20);
		getContentPane().add(txtSenha);
		txtSenha.setColumns(10);
		
		JLabel lblSenha = new JLabel("Senha");
		lblSenha.setBounds(119, 101, 46, 14);
		getContentPane().add(lblSenha);
		
		JButton btnOk = new JButton("OK");
		btnOk.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
			}
		});
		btnOk.setBounds(167, 169, 89, 23);
		getContentPane().add(btnOk);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(10, 27, 384, 198);
		getContentPane().add(textArea);
	}
	private static void addPopup(Component component, final JPopupMenu popup) {
	}
}
