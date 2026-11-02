.class final Lcom/umeng/update/b;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/umeng/update/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/umeng/update/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/update/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/a/c;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method
