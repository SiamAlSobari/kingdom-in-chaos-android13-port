.class public Lcom/droidhang/pay/DHGooglePaymentManager;
.super Ljava/lang/Object;
.source "DHGooglePaymentManager.java"


# static fields
.field static final GOOGLE_PAYMENT_CHECK_URL:Ljava/lang/String; = "http://payment.droidhang.com:8101/google_play/check"

.field static final GOOGLE_PAYMENT_FINISH_URL:Ljava/lang/String; = "http://payment.droidhang.com:8101/google_play/finish"

.field private static _instance:Lcom/droidhang/pay/DHGooglePaymentManager;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _base64EncodedPublicKey:Ljava/lang/String;

.field _glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private _purchaseRequestCode:I

.field _thread:Lcom/droidhang/util/net/DHSimpleHttpThread;

.field mConsumeFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;

.field private mGotInventoryListener:Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lcom/droidhang/pay/util/IabHelper;

.field private mPurchaseFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnIabPurchaseFinishedListener;

.field observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

.field private supportPurchase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhang/pay/DHGooglePaymentManager;->_instance:Lcom/droidhang/pay/DHGooglePaymentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->supportPurchase:Z

    .line 99
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentManager$2;

    invoke-direct {v0, p0}, Lcom/droidhang/pay/DHGooglePaymentManager$2;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mConsumeFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;

    .line 176
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentManager$3;

    invoke-direct {v0, p0}, Lcom/droidhang/pay/DHGooglePaymentManager$3;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

    .line 210
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentManager$4;

    invoke-direct {v0, p0}, Lcom/droidhang/pay/DHGooglePaymentManager$4;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mGotInventoryListener:Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;

    .line 247
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentManager$6;

    invoke-direct {v0, p0}, Lcom/droidhang/pay/DHGooglePaymentManager$6;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mPurchaseFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/droidhang/pay/DHGooglePaymentManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/droidhang/pay/DHGooglePaymentManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->supportPurchase:Z

    return p1
.end method

.method static synthetic access$100(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/pay/DHGooglePaymentManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/droidhang/pay/DHGooglePaymentManager;)Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/pay/DHGooglePaymentManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mGotInventoryListener:Lcom/droidhang/pay/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/droidhang/pay/DHGooglePaymentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/droidhang/pay/DHGooglePaymentManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/droidhang/pay/DHGooglePaymentManager;->buyItemInMainThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/droidhang/pay/DHGooglePaymentManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/droidhang/pay/DHGooglePaymentManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method private buyItemInMainThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->supportPurchase:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    iget v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_purchaseRequestCode:I

    iget-object v4, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mPurchaseFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/droidhang/pay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/droidhang/pay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/droidhang/pay/DHGooglePaymentManager;->alertBillingNotSupport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private genPostJsonString(Lcom/droidhang/pay/util/Purchase;)Ljava/lang/String;
    .locals 5
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "orderId"

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "did"

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/droidhang/pay/DHGooglePaymentManager;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "product_id"

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "package"

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "token"

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    const-string v2, "dh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1

    .line 144
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v0, ""

    .line 124
    .local v0, "retVal":Ljava/lang/String;
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/droidhang/pay/DHGooglePaymentManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/droidhang/pay/DHGooglePaymentManager;->_instance:Lcom/droidhang/pay/DHGooglePaymentManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/droidhang/pay/DHGooglePaymentManager;

    invoke-direct {v0}, Lcom/droidhang/pay/DHGooglePaymentManager;-><init>()V

    sput-object v0, Lcom/droidhang/pay/DHGooglePaymentManager;->_instance:Lcom/droidhang/pay/DHGooglePaymentManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/droidhang/pay/DHGooglePaymentManager;->_instance:Lcom/droidhang/pay/DHGooglePaymentManager;

    return-object v0
.end method

.method private initPurchase()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/droidhang/pay/util/DataProvider;->init(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/droidhang/pay/util/IabHelper;

    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/droidhang/pay/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    .line 73
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhang/pay/util/IabHelper;->enableDebugLogging(Z)V

    .line 74
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    new-instance v1, Lcom/droidhang/pay/DHGooglePaymentManager$1;

    invoke-direct {v1, p0}, Lcom/droidhang/pay/DHGooglePaymentManager$1;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;)V

    invoke-virtual {v0, v1}, Lcom/droidhang/pay/util/IabHelper;->startSetup(Lcom/droidhang/pay/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 89
    return-void
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 274
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 275
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 277
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method


# virtual methods
.method alertBillingNotSupport()V
    .locals 5

    .prologue
    .line 281
    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    sget v4, Lcom/droidhang/util/R$string;->help_url:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/droidhang/pay/DHGooglePaymentManager;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 284
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/droidhang/util/R$string;->billing_not_supported_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    sget v3, Lcom/droidhang/util/R$string;->billing_not_supported_message:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 288
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    sget v3, Lcom/droidhang/util/R$string;->learn_more:I

    new-instance v4, Lcom/droidhang/pay/DHGooglePaymentManager$7;

    invoke-direct {v4, p0, v1}, Lcom/droidhang/pay/DHGooglePaymentManager$7;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method checkPayment(Lcom/droidhang/pay/util/Purchase;)V
    .locals 4
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 204
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-direct {p0, p1}, Lcom/droidhang/pay/DHGooglePaymentManager;->genPostJsonString(Lcom/droidhang/pay/util/Purchase;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v1, "dh"

    const-string v2, "check_payment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_thread:Lcom/droidhang/util/net/DHSimpleHttpThread;

    const-string v2, "http://payment.droidhang.com:8101/google_play/check"

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/droidhang/util/net/DHSimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/util/List;Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/util/net/DHSimpleHttpObserver;)V

    .line 208
    return-void
.end method

.method checkSucceed(Ljava/lang/String;Lcom/droidhang/pay/util/Purchase;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 154
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 157
    .local v1, "error":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 158
    invoke-virtual {p0, p2}, Lcom/droidhang/pay/DHGooglePaymentManager;->paidOk(Lcom/droidhang/pay/util/Purchase;)V

    .line 160
    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    iget-object v4, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mConsumeFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, p2, v4}, Lcom/droidhang/pay/util/IabHelper;->consumeAsync(Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/droidhang/pay/DHGooglePaymentManager;->finishPayment(Lcom/droidhang/pay/util/Purchase;)V

    .line 174
    .end local v1    # "error":Ljava/lang/Integer;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v1    # "error":Ljava/lang/Integer;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 164
    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    iget-object v4, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mConsumeFinishedListener:Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, p2, v4}, Lcom/droidhang/pay/util/IabHelper;->consumeAsync(Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/pay/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1    # "error":Ljava/lang/Integer;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "dh"

    const-string v4, "JSONException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "dh"

    const-string v4, "error=null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    invoke-virtual {v0}, Lcom/droidhang/pay/util/IabHelper;->dispose()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    .line 68
    :cond_0
    return-void
.end method

.method finishPayment(Lcom/droidhang/pay/util/Purchase;)V
    .locals 4
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 195
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 196
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "orderId"

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "dh"

    const-string v2, "finish_payment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_thread:Lcom/droidhang/util/net/DHSimpleHttpThread;

    const-string v2, "http://payment.droidhang.com:8101/google_play/finish"

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->observer:Lcom/droidhang/util/net/DHSimpleHttpObserver;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/droidhang/util/net/DHSimpleHttpThread;->postAsyncRequest(Ljava/lang/String;Ljava/util/List;Lcom/droidhang/pay/util/Purchase;Lcom/droidhang/util/net/DHSimpleHttpObserver;)V

    .line 200
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/droidhang/pay/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;ILandroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "base64EncodeKey"    # Ljava/lang/String;
    .param p2, "purchaseRequestCode"    # I
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_base64EncodedPublicKey:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_purchaseRequestCode:I

    .line 56
    iput-object p3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    .line 57
    iput-object p4, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 58
    new-instance v0, Lcom/droidhang/util/net/DHSimpleHttpThread;

    invoke-direct {v0}, Lcom/droidhang/util/net/DHSimpleHttpThread;-><init>()V

    iput-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_thread:Lcom/droidhang/util/net/DHSimpleHttpThread;

    .line 59
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_thread:Lcom/droidhang/util/net/DHSimpleHttpThread;

    invoke-virtual {v0}, Lcom/droidhang/util/net/DHSimpleHttpThread;->init()V

    .line 60
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->supportPurchase:Z

    .line 61
    return-void
.end method

.method public paidOk(Lcom/droidhang/pay/util/Purchase;)V
    .locals 4
    .param p1, "purchase"    # Lcom/droidhang/pay/util/Purchase;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "orderId":Ljava/lang/String;
    invoke-static {}, Lcom/droidhang/pay/util/DataProvider;->getDP()Lcom/droidhang/pay/util/DataProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/droidhang/pay/util/DataProvider;->checkBillID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "dh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/droidhang/pay/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {v1, v2, v3}, Lcom/droidhang/pay/DHGooglePaymentUtil;->paidOk(Ljava/lang/String;Ljava/lang/String;Landroid/opengl/GLSurfaceView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v1, "dh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchase:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/droidhang/pay/DHGooglePaymentManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/droidhang/pay/DHGooglePaymentManager$5;-><init>(Lcom/droidhang/pay/DHGooglePaymentManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
