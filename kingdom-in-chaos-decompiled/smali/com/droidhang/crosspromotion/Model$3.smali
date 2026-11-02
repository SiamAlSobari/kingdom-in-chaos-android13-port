.class final Lcom/droidhang/crosspromotion/Model$3;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/droidhang/crosspromotion/util/net/SimpleFileDownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/Model;->downloadImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$md5:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/droidhang/crosspromotion/Model$3;->val$md5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncFileDownloadComplete(ZLjava/lang/String;[B)V
    .locals 3
    .param p1, "succeed"    # Z
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bytes"    # [B

    .prologue
    .line 344
    const-string v0, "CrossPromotion_Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image download succeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, "CrossPromotion_Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/droidhang/crosspromotion/Model$3;->val$md5:Ljava/lang/String;

    invoke-static {v0}, Lcom/droidhang/crosspromotion/Model;->getSaveFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/droidhang/crosspromotion/util/IOUtil;->saveFile([BLjava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method
