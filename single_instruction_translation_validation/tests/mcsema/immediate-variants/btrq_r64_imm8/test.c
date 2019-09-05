void leaf() {
  __asm__("btrq $0x77, %rbx");
  }

void main() {
  leaf();
}