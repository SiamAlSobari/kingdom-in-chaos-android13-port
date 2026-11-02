.class public Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;
.super Landroid/app/Activity;
.source "SPOfferWallActivity.java"


# static fields
.field private static final APPID_KEY:Ljava/lang/String; = "app.id.key"

.field public static final EXTRA_CREDENTIALS_TOKEN_KEY:Ljava/lang/String; = "EXTRA_CREDENTIALS_TOKEN_KEY"

.field public static final EXTRA_CURRENCY_NAME_KEY:Ljava/lang/String; = "EXTRA_CURRENCY_NAME_KEY"

.field public static final EXTRA_KEYS_VALUES_MAP_KEY:Ljava/lang/String; = "EXTRA_KEY_VALUES_MAP"

.field public static final EXTRA_SHOULD_STAY_OPEN_KEY:Ljava/lang/String; = "EXTRA_SHOULD_REMAIN_OPEN_KEY"

.field private static final OFW_URL_KEY:Ljava/lang/String; = "ofw"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field private static final SECURITY_TOKEN_KEY:Ljava/lang/String; = "security.token.key"

.field private static final UID_KEY:Ljava/lang/String; = "user.id.key"


# instance fields
.field private mActivityOfferWebClient:Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;

.field private mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mCurrencyName:Ljava/lang/String;

.field protected mCustomKeysValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShouldStayOpen:Z

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const-string v1, "ofw"

    invoke-static {v1}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCurrencyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/UrlBuilder;->setCurrency(Ljava/lang/String;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sponsorpay/utils/UrlBuilder;->addExtraKeysValues(Ljava/util/Map;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addScreenMetrics()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v1

    .line 220
    return-object v1
.end method

.method private deleteCredentialsValues()V
    .locals 3

    .prologue
    .line 243
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 245
    .local v1, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void
.end method

.method private restoreCredentialsValues()V
    .locals 6

    .prologue
    .line 250
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "app.id.key"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "appId":Ljava/lang/String;
    const-string v4, "user.id.key"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "security.token.key"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "securityToken":Ljava/lang/String;
    invoke-static {v0, v3, v2, p0}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 256
    return-void
.end method

.method private storeCrendentialsValues()V
    .locals 4

    .prologue
    .line 234
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 236
    .local v1, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "app.id.key"

    iget-object v3, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v3}, Lcom/sponsorpay/credentials/SPCredentials;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "user.id.key"

    iget-object v3, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v3}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v2, "security.token.key"

    iget-object v3, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v3}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method


# virtual methods
.method protected fetchPassedExtras()V
    .locals 7

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CREDENTIALS_TOKEN_KEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "credentialsToken":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v4

    iput-object v4, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCredentials:Lcom/sponsorpay/credentials/SPCredentials;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    .line 170
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->shouldStayOpenByDefault()Z

    move-result v6

    .line 169
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mShouldStayOpen:Z

    .line 172
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 173
    .local v3, "inflatedKvMap":Ljava/io/Serializable;
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 174
    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "inflatedKvMap":Ljava/io/Serializable;
    iput-object v3, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CURRENCY_NAME_KEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "currencyName":Ljava/lang/String;
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iput-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mCurrencyName:Ljava/lang/String;

    .line 183
    :cond_1
    return-void

    .line 162
    .end local v1    # "currencyName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->restoreCredentialsValues()V

    .line 166
    invoke-direct {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->deleteCredentialsValues()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 118
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 119
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 120
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-static {v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 124
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->fetchPassedExtras()V

    .line 126
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 127
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 128
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->setContentView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/SPWebViewSettings;->enablePlugins(Landroid/webkit/WebSettings;)V

    .line 133
    new-instance v0, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;

    .line 134
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mShouldStayOpen:Z

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;-><init>(Landroid/app/Activity;Z)V

    .line 133
    iput-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mActivityOfferWebClient:Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;

    .line 136
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mActivityOfferWebClient:Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity$1;-><init>(Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    const/16 v0, -0x14

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    iput-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    iput-object v1, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->storeCrendentialsValues()V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 197
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->buildUrl()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "offerwallUrl":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Offerwall request url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/sponsorpay/utils/SPHttpConnection;->createUserSegmentationMapForHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "offerwallUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v3, "An exception occurred when launching the Offer Wall"

    .line 212
    invoke-static {v2, v3, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    iget-object v2, p0, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;->mActivityOfferWebClient:Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/ofw/ActivityOfferWebClient;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldStayOpenByDefault()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method
