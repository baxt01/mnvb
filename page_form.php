<?php require_once("includes/session.php"); ?>
<?php confirm_logged_in(); ?>
<?php // this page is included by new_page.php and edit_page.php ?>
<?php if (!isset($new_page)) {$new_page = false;} ?>

<p>Page name: <input type="text" name="menu_name" value="<?php echo $sel_page['menu_name']; ?>" id="menu_name" /></p>

<p>Position: <select name="position">
	<?php
		if (!$new_page) {
			$page_set = get_pages_for_subject($sel_page['subject_id']);
			$page_count = mysql_num_rows($page_set);
		} else {
			$page_set = get_pages_for_subject($sel_subject['id']);
			$page_count = mysql_num_rows($page_set) + 1;
		}
		for ($count=1; $count <= $page_count; $count++) {
			echo "<option value=\"{$count}\"";
			if ($sel_page['position'] == $count) { echo " selected"; }
			echo ">{$count}</option>";
		}
	?>
	
	<script src="http://mnvb.co.ukt/tinymce/js/tinymce/tinymce.min.js"></script>
	<script type="text/javascript">
  tinymce.init({
    selector: '#content',
	plugins: 'advlist, link, image, colorpicker, textcolor, emoticons, image imagetools',
	toolbar: "forecolor backcolor, emoticons, imagetools"
  });
  </script

</select></p>
<p>Visible: 
	<input type="radio" name="visible" value="0"<?php 
	if ($sel_page['visible'] == 0) { echo " checked"; } 
	?> /> No
	&nbsp;
	<input type="radio" name="visible" value="1"<?php 
	if ($sel_page['visible'] == 1) { echo " checked"; } 
	?> /> Yes
	
<p>Content:
</p>
	<textarea id="content" name="content" rows="20" cols="80"><?php echo $sel_page['content']; ?></textarea>
</p>