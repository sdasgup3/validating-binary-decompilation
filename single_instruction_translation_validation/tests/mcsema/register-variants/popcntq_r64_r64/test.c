void leaf() {
  __asm__("popcntq %rcx, %rbx");
  }

void main() {
  leaf();
}