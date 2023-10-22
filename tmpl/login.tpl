{include file="header_home.tpl"}
<style>
header {
    display: none;
}
</style>


{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}


<div class="full_bg">

      <section class="signup_section">
        <div class="container">

          <div class="top_part">
            <a href="/" class="back_btn"><i class="icofont-arrow-left"></i> Back to home</a>
            <a class="navbar-brand" href="#">
              <img src="images/logo.png" alt="image">
            </a>
          </div>

          <!-- Sign In Form -->
          <div class="form_block">
            <div class="form_side">
              <div class="section_title">
                <span class="title_badge">Welcome Back</span>
                <h2><span>Sign in</span> to your account</h2>

                <p>Dont’t have an account yet? <a href="?a=signup">Register</a></p>

              </div>
              <form>
                <div class="form-group">
                  <input type="email" class="form-control" placeholder="Email">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" placeholder="Password">
                </div>
                <div class="forgate_check">
                  <div class="coustome_checkbox">
                    <label for="remamber_check">
                      <input type="checkbox" id="remamber_check">
                      <span class="checkmark"></span>
                      Remember for 30 days
                    </label>
                  </div>
                  <a href="#">Forgot password ?</a>
                </div>
                <div class="btn_block">
                  <button class="btn puprple_btn ml-0">Sign Up Now</button>
                  <div class="btn_bottom"></div>
                </div>
              </form>
            </div>
            <div class="side_screen">
              <div class="dotes_blue"><img src="images/blue_dotes.png" alt="image"></div>
              <div class="left_icon">
                <img src="images/smallStar.png" alt="image">
              </div>
              <div class="right_icon">
                <img src="images/bigstar.png" alt="image">
              </div>
              <div class="scrren">
                <img src="images/sign_in_screen.png" alt="image">
              </div>
            </div>
          </div>

        </div>
      </section>

    </div>








{if $frm.say eq 'invalid_login'}
<h3>Login error:</h3><br><br>

<div class="error">Your login or password or turing image code is wrong. Please check this information.</div>
{if $bf_tries.status}
{if $bf_tries.left == 0}
<div class="error">You have already maximum times entered incorrectly login info. Your account is blocked. Check your email to active.</div>
{else}
<div class="error">You have <b>{$bf_tries.left}</b> tries to entered correctly login information befor blocking.</div>
{/if}
{/if}

{/if}
<h3>Login:</h3>
<br>
<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value='do_login'>
<input type=hidden name=follow value='{$frm.follow}'>
<input type=hidden name=follow_id value='{$frm.follow_id}'>
<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>Username:</td>
 <td><input type=text name=username value='{$frm.username|escape:"html"}' class=inpts size=30 autofocus="autofocus"></td>
</tr><tr>
 <td>Password:</td>
 <td><input type=password name=password value='' class=inpts size=30></td>
</tr>
{include file="captcha.tpl" action="login"}
<tr>
 <td>&nbsp;</td>
 <td><input type=submit value="Login" class=sbmt></td>
</tr></table>
</form>
<br><br>
or <a href="{"?a=forgot_password"|encurl}">remember your login information</a>.

{include file="footer_home.tpl"}
