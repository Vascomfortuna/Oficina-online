package ipg.pt.oficinaonline;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;

/**
 * Created by vasco on 18/01/2017.
 */

public class ScreenSlideMarcacoesFragment extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(
                R.layout.fragment_vv_marcacoes, container, false);
        LinearLayout ll = (LinearLayout) rootView.getChildAt(0);
        TextView textView = new TextView(ll.getContext());
        textView.setTextSize(20);
        textView.setPadding(16,16,16,16);
        textView.setLayoutParams(new TableLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT, 0.2f));
        textView.setText("asdasdfgthygjhfdsaDFGH");
        ll.addView(textView);
        return rootView;
    }

}
