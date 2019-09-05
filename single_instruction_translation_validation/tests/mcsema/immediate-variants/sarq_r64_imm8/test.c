void leaf() {
  __asm__("sarq $0x77, %rbx");
  }

void main() {
  leaf();
}