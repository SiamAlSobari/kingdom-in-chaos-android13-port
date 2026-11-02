.class Lcom/sponsorpay/mediation/SPMediationCoordinator$2;
.super Ljava/lang/Thread;
.source "SPMediationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/SPMediationCoordinator;->startMediationAdapters(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iput-object p3, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->val$activity:Landroid/app/Activity;

    .line 60
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 62
    const-string v7, "SPMediationCoordinator"

    const-string v8, "Starting mediation networks..."

    invoke-static {v7, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v7, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    .line 64
    invoke-virtual {v7}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getMediationAdapters()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 63
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    const-string v7, "SPMediationCoordinator"

    const-string v8, "Initialization complete..."

    invoke-static {v7, v8}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v8, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->val$activity:Landroid/app/Activity;

    invoke-static {v7, v8}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->access$1(Lcom/sponsorpay/mediation/SPMediationCoordinator;Landroid/app/Activity;)V

    .line 97
    return-void

    .line 64
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 65
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    .local v1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 70
    .local v0, "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "version":Ljava/lang/String;
    const-string v7, "SPMediationCoordinator"

    const-string v9, "Starting adapter %s version %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    const-string v7, "SPMediationCoordinator"

    const-string v9, "Adapter version is compatible with SDK. Proceeding..."

    invoke-static {v7, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v7, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Lcom/sponsorpay/mediation/SPMediationAdapter;->startAdapter(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    const-string v7, "SPMediationCoordinator"

    const-string v9, "Adapter has been started successfully"

    invoke-static {v7, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator$2;->this$0:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-static {v7}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->access$0(Lcom/sponsorpay/mediation/SPMediationCoordinator;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 86
    .end local v0    # "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    .end local v1    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "SPMediationCoordinator"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Adapter not found - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 81
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    .restart local v1    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "SPMediationCoordinator"

    const-string v9, "Warning - the adapter has NOT been started."

    invoke-static {v7, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 88
    .end local v0    # "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    .end local v1    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "SPMediationCoordinator"

    const-string v9, "An error occured"

    invoke-static {v7, v9, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 84
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    .restart local v1    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v7, "SPMediationCoordinator"

    const-string v9, "Adapter version is NOT compatible with this SDK."

    invoke-static {v7, v9}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 90
    .end local v0    # "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;
    .end local v1    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sponsorpay/mediation/SPMediationAdapter;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v7, "SPMediationCoordinator"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "An error occured while trying to instantiate "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
