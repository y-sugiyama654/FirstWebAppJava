package jp.hogehoge.javastudy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 文字コードの設定
		request.setCharacterEncoding("Windows-31J");

		// modeの取得
		String mode = request.getParameter("mode");

		// 実行ステータスの宣言
		String status = "成功しました";

		// JavaBeansの初期化
		ShainBeans shain = new ShainBeans(request);

		switch (mode) {

		case "add": // 登録
			if (shain.addData() == false) {
				status = "失敗しました";
			}
			break;

		}

		// statusをセットしてresult.jspに転送
		request.setAttribute("status", status);
		request.getRequestDispatcher("/result.jsp").forward(request, response);

	}

}
