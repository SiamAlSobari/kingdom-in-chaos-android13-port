.class final Lcom/wwcd/util/preference/DefaultPreferenceUtil$1;
.super Ljava/lang/Object;
.source "DefaultPreferenceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/preference/DefaultPreferenceUtil;->downloadAppFromMarket(Landroid/app/Activity;Ljava/lang/String;)V
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
    .line 115
    iput-object p1, p0, Lcom/wwcd/util/preference/DefaultPreferenceUtil$1;->val$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wwcd/util/preference/DefaultPreferenceUtil$1;->val$ctx:Landroid/app/Activity;

    const-string v1, "Can not find google market on your device!"

    invoke-static {v0, v1}, Lcom/wwcd/util/ToastUtil;->alertShort(Landroid/app/Activity;Ljava/lang/String;)V

    .line 120
    return-void
.end method
