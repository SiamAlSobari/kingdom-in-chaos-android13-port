.class final Lcom/umeng/update/c;
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
    .line 519
    iput-object p1, p0, Lcom/umeng/update/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/umeng/update/c;->a:Landroid/content/Context;

    const-string v1, "Please set umeng appkey!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    return-void
.end method
