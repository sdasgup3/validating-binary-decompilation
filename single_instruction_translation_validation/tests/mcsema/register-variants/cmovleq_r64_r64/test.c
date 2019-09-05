void leaf() {
  __asm__("cmovleq %rcx, %rbx");
  }

void main() {
  leaf();
}