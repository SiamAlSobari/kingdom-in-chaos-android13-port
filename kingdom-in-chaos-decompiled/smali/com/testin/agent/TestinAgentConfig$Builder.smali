.class public Lcom/testin/agent/TestinAgentConfig$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/testin/agent/config/IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/testin/agent/TestinAgentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TConfig:Lcom/testin/agent/TestinAgentConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "TestinAgentConfig\'s context is null!!!"

    invoke-static {v0}, Lcom/testin/agent/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/testin/agent/a/h;->b:Landroid/content/Context;

    invoke-static {}, Lcom/testin/agent/TestinAgentConfig;->access$000()Lcom/testin/agent/TestinAgentConfig;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/testin/agent/TestinAgentConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/testin/agent/TestinAgentConfig;-><init>(Lcom/testin/agent/TestinAgentConfig$1;)V

    invoke-static {v0}, Lcom/testin/agent/TestinAgentConfig;->access$002(Lcom/testin/agent/TestinAgentConfig;)Lcom/testin/agent/TestinAgentConfig;

    :cond_1
    invoke-static {}, Lcom/testin/agent/TestinAgentConfig;->access$000()Lcom/testin/agent/TestinAgentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/testin/agent/TestinAgentConfig;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    return-object v0
.end method

.method public withAppChannel(Ljava/lang/String;)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$502(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public withAppKey(Ljava/lang/String;)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$202(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public withCollectNDKCrash(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$702(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withDebugModel(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$302(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withErrorActivity(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$602(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withLogCat(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$402(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withOpenCrash(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$902(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withOpenEx(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$1002(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withReportOnBack(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$1202(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withReportOnlyWifi(Z)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$1102(Lcom/testin/agent/TestinAgentConfig;Z)Z

    return-object p0
.end method

.method public withUserInfo(Ljava/lang/String;)Lcom/testin/agent/config/IBuilder;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/TestinAgentConfig$Builder;->TConfig:Lcom/testin/agent/TestinAgentConfig;

    invoke-static {v0, p1}, Lcom/testin/agent/TestinAgentConfig;->access$802(Lcom/testin/agent/TestinAgentConfig;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
