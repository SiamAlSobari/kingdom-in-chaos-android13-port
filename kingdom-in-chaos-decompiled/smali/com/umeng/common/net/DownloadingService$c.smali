.class Lcom/umeng/common/net/DownloadingService$c;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 189
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingHandler(msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.replyTo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 262
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IncomingHandler(msg.getData():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Lcom/umeng/common/net/a$a;->a(Landroid/os/Bundle;)Lcom/umeng/common/net/a$a;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    sget-boolean v2, Lcom/umeng/common/net/DownloadingService;->r:Z

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/a$a;ZLandroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already in downloading list. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/d;->b(Lcom/umeng/common/net/a$a;)I

    move-result v1

    .line 202
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/d$b;

    iget-object v0, v0, Lcom/umeng/common/net/d$b;->a:Lcom/umeng/common/net/DownloadingService$b;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "continue"

    invoke-static {v1, v0}, Lcom/umeng/common/net/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/umeng/common/net/DownloadingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const-string v2, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Lcom/umeng/common/net/d;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0, v2, v1}, Lcom/umeng/common/net/d;->a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/a/c;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 218
    iput v5, v0, Landroid/os/Message;->what:I

    .line 219
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 220
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 222
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 232
    iput v6, v0, Landroid/os/Message;->what:I

    .line 233
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 234
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 236
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;)V

    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$c;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 248
    iput v5, v0, Landroid/os/Message;->what:I

    .line 249
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 250
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 252
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 253
    :catch_2
    move-exception v0

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
