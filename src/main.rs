use clap::{Parser, Subcommand};

#[derive(Parser)]
#[command(name = "sprig")]
#[command(about = "A CLI tool", long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// Create a new project
    New {
        /// Name of the project
        name: String,
    },
}

fn main() {
    let cli = Cli::parse();

    match &cli.command {
        Commands::New { name } => {
            println!("Creating new project: {}", name);
        }
    }
}
