{include file='inc/head.tpl'}
{include file='inc/header.tpl'}
<main class="main">
    <div><img class="logo" src="{base_url}/img/logo.png"
              alt="{$config->appName}" width="328" height="284"></div>
    <form action="{path_for name="info"}">
        <label class="labelurl" for="url">
            {t}Copy here the URL of your video (Youtube, Dailymotion, etc.){/t}
        </label>
        <div class="champs">
        <span class="URLinput_wrapper">
            <!-- We used to have an autofocus attribute on this field but it triggerd a very specific CSS bug: https://github.com/Rudloff/alltube/issues/117 -->
            <input class="URLinput large-font" type="url" name="url" id="url"
                   required placeholder="http://example.com/video"/>
        </span>
            {if $config->uglyUrls}
                <input type="hidden" name="page" value="info"/>
            {/if}
            <input class="downloadBtn large-font" type="submit" value="{t}Download{/t}"/><br/>
            {if $config->convert}

            {/if}
        </div>
    </form>


</main>
{include file='inc/footer.tpl'}
