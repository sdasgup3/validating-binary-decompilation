void leaf() {
  __asm__("sarq $0x1, %rbx");
  }

void main() {
  leaf();
}