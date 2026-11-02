.class Lcom/sponsorpay/mediation/SPMediationAdapter$1;
.super Ljava/lang/Thread;
.source "SPMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/SPMediationAdapter;->runNotifyingThread([Ljava/lang/Object;[Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/SPMediationAdapter;

.field private final synthetic val$args:[Ljava/lang/Object;

.field private final synthetic val$classes:[Ljava/lang/Class;

.field private final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/SPMediationAdapter;

    iput-object p3, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$classes:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$args:[Ljava/lang/Object;

    .line 144
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 146
    iget-object v2, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v2}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    return-void

    .line 146
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "listener":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$methodName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$classes:[Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 149
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 154
    :catch_1
    move-exception v3

    goto :goto_0

    .line 153
    :catch_2
    move-exception v3

    goto :goto_0

    .line 152
    :catch_3
    move-exception v3

    goto :goto_0

    .line 151
    :catch_4
    move-exception v3

    goto :goto_0
.end method
