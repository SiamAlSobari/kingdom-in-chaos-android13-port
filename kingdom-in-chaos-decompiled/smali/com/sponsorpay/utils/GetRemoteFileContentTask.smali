.class public Lcom/sponsorpay/utils/GetRemoteFileContentTask;
.super Landroid/os/AsyncTask;
.source "GetRemoteFileContentTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetRemoteFileContentTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/utils/GetRemoteFileContentTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "GetRemoteFileContentTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/sponsorpay/utils/SPHttpConnection;->getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/SPHttpConnection;->open()Lcom/sponsorpay/utils/SPHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/SPHttpConnection;->getBodyContent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 25
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GetRemoteFileContentTask"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 25
    const/4 v1, 0x0

    goto :goto_0
.end method
