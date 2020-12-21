package jp.hogehoge.javastudy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 変数の初期設定
		String name = "ゲスト"; // 名前の初期値設定
		String status = "ログイン失敗"; // ログインステータス

		// 文字コードの初期設定
		request.setCharacterEncoding("Windows-31J");

		// IDの取得
		String id = request.getParameter("id");

		// パスワードの取得
		String pass = request.getParameter("pass");

		// IDとパスワードのチェック
		if (id.equals("search") && pass.equals("man")) {
			status = "ログイン成功";
			name = "佐藤";
		}

		// リクエストにデータを追加する
		request.setAttribute("login", status);
		request.setAttribute("name", name);

		// HttpSessionの作成とセッションにデータを追加する
		HttpSession session = request.getSession( true );
		session.setAttribute( "name", name );

		// result.jspへ転送
		request.getRequestDispatcher("/result.jsp").forward(request, response);

	}
}
