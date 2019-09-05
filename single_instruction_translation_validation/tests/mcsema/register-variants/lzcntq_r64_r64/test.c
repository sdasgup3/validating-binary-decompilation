void leaf() {
  __asm__("lzcntq %rcx, %rbx");
  }

void main() {
  leaf();
}