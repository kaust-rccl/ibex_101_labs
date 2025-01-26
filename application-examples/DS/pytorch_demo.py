import torch

def main():
    # Check if CUDA is available
    if not torch.cuda.is_available():
        print("CUDA is not available. Running on CPU.")
        device = torch.device("cpu")
    else:
        # List all available GPUs
        num_gpus = torch.cuda.device_count()
        print(f"CUDA is available. Number of GPUs: {num_gpus}")
        for i in range(num_gpus):
            print(f"GPU {i}: {torch.cuda.get_device_name(i)}")
        
        # Use the first GPU
        device = torch.device("cuda:0")
        print(f"Using GPU: {torch.cuda.get_device_name(0)}")

    # Create a tensor and perform a computation
    tensor = torch.randn((1000, 1000), device=device)  # Random 1000x1000 tensor
    print("Tensor created on:", tensor.device)

    result = tensor @ tensor.T  # Matrix multiplication
    print("Matrix multiplication completed.")

    # Move the result back to the CPU and print a summary
    result_cpu = result.to("cpu")
    print("Result moved to CPU. Shape:", result_cpu.shape)

    # Multi-GPU example (if more than one GPU is available)
    if torch.cuda.device_count() > 1:
        print("\nMulti-GPU Example:")
        model = torch.nn.Linear(1000, 1000).to("cuda:0")  # Simple linear model
        model = torch.nn.DataParallel(model)  # Distribute the model across GPUs
        input_tensor = torch.randn((64, 1000)).to("cuda:0")  # Batch size of 64
        output = model(input_tensor)
        print("Output shape after DataParallel:", output.shape)

if __name__ == "__main__":
    main()