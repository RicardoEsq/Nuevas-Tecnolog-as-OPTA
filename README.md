# Tarea 2 - ECS Fargate (Ricardo Esquivel Palacios)

Este repositorio contiene el código de Terraform para desplegar una infraestructura en AWS utilizando ECS Fargate con una arquitectura de red DMZ.

## Contenido
- **VPC con DMZ:** 2 subredes públicas (DMZ) y 2 subredes privadas, NAT Gateway e Internet Gateway.
- **ECR:** Repositorio para almacenar imágenes de contenedores.
- **ALB:** Application Load Balancer para exponer la aplicación en el puerto 80.
- **ECS Fargate:** Cluster y servicio para ejecutar contenedores de forma escalable.

## Requisitos
- Terraform instalado.
- Credenciales de AWS configuradas.

## Instrucciones de Uso

1.  **Inicializar Terraform:**
    ```bash
    terraform init
    ```

2.  **Ver el plan de ejecución:**
    ```bash
    terraform plan
    ```

3.  **Aplicar los cambios:**
    ```bash
    terraform apply
    ```

4.  **Acceder a la aplicación:**
    Al finalizar, Terraform mostrará el `alb_dns_name`. Copia esa URL en tu navegador para ver la aplicación demo (nginx).

## Notas
- Los recursos utilizan el prefijo `esquivel` para identificarlos.
- La aplicación se ejecuta en subredes privadas por seguridad, siendo accesible únicamente a través del Load Balancer.
