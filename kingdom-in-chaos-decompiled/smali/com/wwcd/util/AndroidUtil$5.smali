.class final Lcom/wwcd/util/AndroidUtil$5;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil;->downloadAppFromMarket(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$5;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$5;->val$ctx:Landroid/app/Activity;

    const-string v1, "Can not find google market on your device!"

    invoke-static {v0, v1}, Lcom/wwcd/util/ToastUtil;->alertShort(Landroid/app/Activity;Ljava/lang/String;)V

    .line 284
    return-void
.end method
