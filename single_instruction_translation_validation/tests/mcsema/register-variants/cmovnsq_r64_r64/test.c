void leaf() {
  __asm__("cmovnsq %rcx, %rbx");
  }

void main() {
  leaf();
}