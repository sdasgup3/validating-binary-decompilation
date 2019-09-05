void leaf() {
  __asm__("cmovgq %rcx, %rbx");
  }

void main() {
  leaf();
}