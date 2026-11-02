.class public abstract Lcom/sponsorpay/utils/SPWebClient;
.super Landroid/webkit/WebViewClient;
.source "SPWebClient.java"


# static fields
.field private static final EXIT_URL_RESULT_CODE_PARAM_KEY:Ljava/lang/String; = "status"

.field private static final EXIT_URL_TARGET_URL_PARAM_KEY:Ljava/lang/String; = "url"

.field private static final EXIT_URL_TRACKING_URL_PARAM_KEY:Ljava/lang/String; = "tracking_url"

.field public static final LOG_TAG:Ljava/lang/String; = "SPWebClient"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field private static final SPONSORPAY_EXIT_SCHEMA:Ljava/lang/String; = "exit"

.field private static final SPONSORPAY_SCHEMA:Ljava/lang/String; = "sponsorpay://"


# instance fields
.field private mHostActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "hostActivity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sponsorpay/utils/SPWebClient;->mHostActivityRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method protected getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sponsorpay/utils/SPWebClient;->mHostActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected launchActivityWithUrl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/sponsorpay/utils/SPWebClient;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    .line 138
    .local v1, "hostActivity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    if-eqz p1, :cond_0

    .line 145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 148
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/SPWebClient;->onTargetActivityStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v4, 0x1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "market"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sponsorpay/utils/SPWebClient;->getHostActivity()Landroid/app/Activity;

    move-result-object v5

    .line 154
    const-string v6, "android.intent.action.VIEW"

    .line 156
    const-string v7, "market://search?q=pname:com.google"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 153
    invoke-static {v5, v6, v7}, Lcom/sponsorpay/utils/IntentHelper;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    .line 156
    if-nez v5, :cond_0

    .line 157
    const-string v5, "SPWebClient"

    const-string v6, "Play Store is not installed on this device..."

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/sponsorpay/utils/SPWebClient;->onPlayStoreNotFound()V

    goto :goto_0
.end method

.method protected onPlayStoreNotFound()V
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/utils/SPWebClient;->showDialog(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 208
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, ".*StartCom Ltd.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 212
    :cond_0
    return-void
.end method

.method protected abstract onSponsorPayExitScheme(ILjava/lang/String;)V
.end method

.method protected abstract onTargetActivityStart(Ljava/lang/String;)V
.end method

.method protected parseSponsorPayExitUrlForResultCode(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "resultCodeAsString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 98
    :goto_0
    return v2

    :cond_0
    const/16 v2, -0xa

    goto :goto_0
.end method

.method protected parseSponsorPayExitUrlForTargetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parseSponsorPayExitUrlForTrackingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "tracking_url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    const-string v7, "SPWebClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shouldOverrideUrlLoading called with url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v7, "sponsorpay://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 107
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "host":Ljava/lang/String;
    const-string v7, "exit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 112
    invoke-virtual {p0, p2}, Lcom/sponsorpay/utils/SPWebClient;->parseSponsorPayExitUrlForResultCode(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "resultCode":I
    invoke-virtual {p0, p2}, Lcom/sponsorpay/utils/SPWebClient;->parseSponsorPayExitUrlForTargetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "targetUrl":Ljava/lang/String;
    const-string v7, "SPWebClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Overriding. Target Url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/sponsorpay/utils/SPWebClient;->parseSponsorPayExitUrlForTrackingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "trackingUrl":Ljava/lang/String;
    invoke-static {v3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    const-string v7, "SPWebClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Overriding. Tracking Url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v7, Lcom/sponsorpay/utils/GetRemoteFileContentTask;

    invoke-direct {v7}, Lcom/sponsorpay/utils/GetRemoteFileContentTask;-><init>()V

    new-array v8, v5, [Ljava/lang/String;

    aput-object v3, v8, v6

    invoke-virtual {v7, v8}, Lcom/sponsorpay/utils/GetRemoteFileContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/sponsorpay/utils/SPWebClient;->onSponsorPayExitScheme(ILjava/lang/String;)V

    .line 132
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "resultCode":I
    .end local v2    # "targetUrl":Ljava/lang/String;
    .end local v3    # "trackingUrl":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return v5

    .line 126
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/sponsorpay/utils/SPWebClient;->processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 131
    .end local v0    # "host":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v5, "SPWebClient"

    const-string v7, "Not overriding"

    invoke-static {v5, v7}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 132
    goto :goto_0
.end method

.method public showDialog(Ljava/lang/String;)V
    .locals 8
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v5, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "errorDialogTitle":Ljava/lang/String;
    sget-object v5, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "dismissButtonCaption":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sponsorpay/utils/SPWebClient;->getHostActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    new-instance v5, Lcom/sponsorpay/utils/SPWebClient$1;

    invoke-direct {v5, p0}, Lcom/sponsorpay/utils/SPWebClient$1;-><init>(Lcom/sponsorpay/utils/SPWebClient;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/sponsorpay/utils/SPWebClient;->getHostActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 197
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t show error dialog. Not displayed error message is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-static {v5, v6, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
