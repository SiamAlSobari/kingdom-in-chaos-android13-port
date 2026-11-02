.class final Lcom/wwcd/util/AndroidUtil$3;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil;->popNewVersionDlgForHttpDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bt1:Ljava/lang/String;

.field final synthetic val$bt2:Ljava/lang/String;

.field final synthetic val$ctx:Landroid/app/Activity;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$dlurl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$3;->val$ctx:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wwcd/util/AndroidUtil$3;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lcom/wwcd/util/AndroidUtil$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/wwcd/util/AndroidUtil$3;->val$bt1:Ljava/lang/String;

    iput-object p5, p0, Lcom/wwcd/util/AndroidUtil$3;->val$bt2:Ljava/lang/String;

    iput-object p6, p0, Lcom/wwcd/util/AndroidUtil$3;->val$dlurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$3;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$3;->val$description:Ljava/lang/String;

    iget-object v2, p0, Lcom/wwcd/util/AndroidUtil$3;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/wwcd/util/AndroidUtil$3;->val$bt1:Ljava/lang/String;

    iget-object v4, p0, Lcom/wwcd/util/AndroidUtil$3;->val$bt2:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/wwcd/util/AndroidUtil$3$1;

    invoke-direct {v6, p0}, Lcom/wwcd/util/AndroidUtil$3$1;-><init>(Lcom/wwcd/util/AndroidUtil$3;)V

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 227
    return-void
.end method
