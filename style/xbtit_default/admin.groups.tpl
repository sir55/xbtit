<div class="panel panel-default">
  <div class="panel-heading">
    <h4><i class="fa fa-fw fa-cogs"></i>User Group Settings</h4>
  </div>
  <div class="panel-body" align="center">
<if:add_new>

<form action="<tag:frm_action />" name="level" method="post">

  <table class="lista" width="100%" align="center" style="overflow:auto;">

    <tr>

      <td class="header"><tag:language.GROUP_NAME /></td>

      <td class="lista"><input type="text" name="gname" value="" size="40" /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_BASE_LEVEL /></td>

      <td class="lista"><tag:groups_combo /></td>

    </tr>

    <tr>

      <td align="center" class="header"><input type="submit" class="btn" name="write" value="<tag:language.FRM_CONFIRM />" /></td>

      <td align="center" class="header"><input type="submit" class="btn" name="write" value="<tag:language.FRM_CANCEL />" /></td>

    </tr>

  </table>

</form>

<else:add_new>

<if:list>

<div style="overflow:auto; max-width:750px;"><table class="lista" width="100%" align="center">

  <tr>

    <td class="header" align="center"><tag:language.GROUP /></td>

    <td class="header" align="center"><tag:language.MNU_TORRENT /><br /><tag:language.VIEW_EDIT_DEL /></td>

    <td class="header" align="center"><tag:language.MEMBERS /><br /><tag:language.VIEW_EDIT_DEL /></td>

    <td class="header" align="center"><tag:language.MNU_NEWS /><br /><tag:language.VIEW_EDIT_DEL /></td>

    <td class="header" align="center"><tag:language.MNU_FORUM /><br /><tag:language.VIEW_EDIT_DEL /></td>

    <td class="header" align="center"><tag:language.MNU_UPLOAD /></td>

    <td class="header" align="center"><tag:language.DOWNLOAD /></td>

    <td class="header" align="center"><tag:language.ADMIN_CPANEL /></td>

    <td class="header" align="center"><tag:language.WT /></td>

    <if:smf_in_use_1>
    <td class="header" align="center"><tag:language.SMF_MIRROR /></td>
    </if:smf_in_use_1>

    <if:ipb_in_use_1>
    <td class="header" align="center"><tag:language.IPB_MIRROR /></td>
    </if:ipb_in_use_1>

    <td class="header" align="center"><tag:language.DELETE /></td>

  </tr>

  <loop:groups>

  <tr>

    <td class="lista" align="center"><tag:groups[].user /></td>

    <td class="lista" align="center"><tag:groups[].torrent_aut /></td>

    <td class="lista" align="center"><tag:groups[].users_aut /></td>

    <td class="lista" align="center"><tag:groups[].news_aut /></td>

    <td class="lista" align="center"><tag:groups[].forum_aut /></td>

    <td class="lista" align="center"><tag:groups[].can_upload /></td>

    <td class="lista" align="center"><tag:groups[].can_download /></td>

    <td class="lista" align="center"><tag:groups[].admin_access /></td>

    <td class="lista" align="center"><tag:groups[].WT /></td>

    <if:smf_in_use_2>
    <td class="lista" align="center"><tag:groups[].smf_group_mirror /></td>
    </if:smf_in_use_2>

    <if:ipb_in_use_2>
    <td class="lista" align="center"><tag:groups[].ipb_group_mirror /></td>
    </if:ipb_in_use_2>

    <td class="lista" align="center"><tag:groups[].delete /></td>

  </tr>

  </loop:groups>
  
</table>
<table class="lista" width="100%" align="center">

  <tr>

    <td class="header" align="center"><tag:group_add_new /></td>

  </tr>

</table></div>

<else:list>

<form action="<tag:frm_action />" name="level" method="post">

  <table class="lista" width="100%" align="center">

    <tr>

      <td class="header"><tag:language.GROUP_NAME /></td>

      <td class="lista"><input type="text" name="gname" value="<tag:group.level />" size="40" /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_PCOLOR />&lt;span style='color:red'&gt;):</td>

      <td class="lista"><input type="text" name="pcolor" value="<tag:group.prefixcolor />" size="40" maxlength="150" /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_SCOLOR />&lt;/span&gt;):</td>

      <td class="lista"><input type="text" name="scolor" value="<tag:group.suffixcolor />" size="40" maxlength="150" /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_WT />&nbsp;(hours):</td>

      <td class="lista"><input type="text" name="waiting" value="<tag:group.WT />" size="20" maxlength="10" /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.MNU_TORRENT /></td>

      <td class="lista">

        <tag:language.GROUP_VIEW />&nbsp;<input type="checkbox" name="vtorrents" <tag:group.view_torrents /> />&nbsp;&nbsp;

        <tag:language.GROUP_EDIT />&nbsp;<input type="checkbox" name="etorrents" <tag:group.edit_torrents /> />&nbsp;&nbsp;

        <tag:language.GROUP_DELETE />&nbsp;<input type="checkbox" name="dtorrents" <tag:group.delete_torrents /> />

      </td>

    </tr>

    <tr>

      <td class="header"><tag:language.MEMBERS /></td>

      <td class="lista">

        <tag:language.GROUP_VIEW />&nbsp;<input type="checkbox" name="vusers" <tag:group.view_users /> />&nbsp;&nbsp;

        <tag:language.GROUP_EDIT />&nbsp;<input type="checkbox" name="eusers" <tag:group.edit_users /> />&nbsp;&nbsp;

        <tag:language.GROUP_DELETE />&nbsp;<input type="checkbox" name="dusers" <tag:group.delete_users /> />

      </td>

    </tr>

    <tr>

      <td class="header"><tag:language.MNU_NEWS /></td>

      <td class="lista">

        <tag:language.GROUP_VIEW />&nbsp;<input type="checkbox" name="vnews" <tag:group.view_news /> />&nbsp;&nbsp;

        <tag:language.GROUP_EDIT />&nbsp;<input type="checkbox" name="enews" <tag:group.edit_news /> />&nbsp;&nbsp;

        <tag:language.GROUP_DELETE />&nbsp;<input type="checkbox" name="dnews" <tag:group.delete_news /> />

      </td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_VIEW_FORUM /></td>

      <td class="lista">

        <tag:language.GROUP_VIEW />&nbsp;<input type="checkbox" name="vforum" <tag:group.view_forum /> />&nbsp;&nbsp;

        <tag:language.GROUP_EDIT />&nbsp;<input type="checkbox" name="eforum" <tag:group.edit_forum /> />&nbsp;&nbsp;

        <tag:language.GROUP_DELETE />&nbsp;<input type="checkbox" name="dforum" <tag:group.delete_forum /> />

      </td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_UPLOAD /></td>

      <td class="lista"><input type="checkbox" name="upload" <tag:group.can_upload /> /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_DOWNLOAD /></td>

      <td class="lista"><input type="checkbox" name="down" <tag:group.can_download /> /></td>

    </tr>

    <tr>

      <td class="header"><tag:language.GROUP_GO_CP /></td>

      <td class="lista"><input type="checkbox" name="admincp" <tag:group.admin_access /> /></td>

    </tr>

    <if:smf_in_use_3>
    <tr>

      <td class="header"><tag:language.GROUP_SMF_MIRROR /></td>

      <td class="lista"><tag:group.forumlist /><input type="text" name="smf_group_mirror" value="<tag:group.smf_group_mirror />" size="4" maxlength="4" /></td>

    </tr>
    </if:smf_in_use_3>

    <if:ipb_in_use_3>
    <tr>

      <td class="header"><tag:language.GROUP_IPB_MIRROR /></td>

      <td class="lista"><tag:group.forumlist /><input type="text" name="ipb_group_mirror" value="<tag:group.ipb_group_mirror />" size="4" maxlength="4" /></td>

    </tr>
    </if:ipb_in_use_3>

    <tr>

      <td align="center" class="header"><input type="submit" class="btn" name="write" value="<tag:language.FRM_CONFIRM />" /></td>

      <td align="center" class="header"><input type="submit" class="btn" name="write" value="<tag:language.FRM_CANCEL />" /></td>

    </tr>

  </table>

</form>

</if:list>

</if:add_new>
    </div>
  </div>